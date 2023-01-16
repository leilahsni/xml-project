#!/usr/bin/perl
use utf8;
use strict;
binmode(STDOUT, ":encoding(UTF-8)"); # permet de préciser l'encodage des données de sortie

#-----------------------------------------------------------
if ($#ARGV != 1) {
    print "Il manque un argument à votre programme....\n";
    exit;
}

my $rep="$ARGV[0]";
my $rubrique="$ARGV[1]";
# on s'assure que le nom du répertoire ne se termine pas par un "/"
$rep=~ s/[\/]$//;

open my $txt_output, ">:encoding(UTF-8)", "corpus-titre-description.txt";
open my $xml_output, ">:encoding(UTF-8)", "pre-corpus-titre-description.xml";
print $xml_output "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<corpus>\n";
#----------------------------------------
&parcoursarborescencefichiers($rep);	# recursion
#----------------------------------------
print $xml_output "</corpus>";
close $txt_output;
close $xml_output;
# étiquetage
#----------------------------------------
# étiquetage du fichier txt avec udpipe
&UPTagging;
# étiquetage du fichier xml avec treetagger
&TTTagging;
#----------------------------------------
# suppression des fichiers qui ont servit au traitement mais qui ne servent plus
system("rm -f description.txt description_bis.txt title.txt title_bis.txt corpus-titre-description pre-corpus-titre-description.xml corpus-titre-description.txt");

exit;
#----------------------------------------------
# sous-programmes
sub parcoursarborescencefichiers {
    my $path = shift(@_);
    opendir(DIR, $path) or die "can't open $path: $!\n";
    my @files = readdir(DIR);
    closedir(DIR);
    foreach my $file (@files) {
	   next if $file =~ /^\.\.?$/;
	   $file = $path."/".$file;

	   if (-d $file) { #si le fichier est un repertoire, on refait ce qu'on a fait juste avant
	       &parcoursarborescencefichiers($file);	# recursion
	   }

	   if (-f $file) { #sinon c'est un fichier, on continue...
            if ($file =~ /$rubrique.+\.xml$/) {
                print "Traitement du fichier $file \n";
                open my $input, "<:encoding(UTF-8)", $file;
                $/=undef; #undef permet de supprimer une variable
                my $line=<$input>; #chaque ligne du fichier
                close($input);

                while ($line=~/<item><title>(.+?)<\/title>.+?<description>(.+?)<\/description>/gs) { #le g est très important pour que le programme passe à l'occurence suivante et ne boucle pas à l'infini !
                    my $title=&clean($1); #correspond à la première parenthèse
                    my $description=&clean($2); #correspond à la seconde parenthèse
                    print $txt_output "$title \n";
                    print $txt_output "$description \n";
                    # ce sous-programme a été modifié par rapport au script de la BàO1 pour y inclure une étape de segmentation et d'étiquetage
                    my ($segmentized_title, $segmentized_description)=&segmentationTD($title,$description);

                    print $xml_output "<item><titre>\n$segmentized_title\n</titre><description>\n$segmentized_description\n</description></item>\n";
                }
            }
	   }
    }
}

sub clean {
    # sous-programme de nettoyage des titres et descriptions
    my $text=shift @_;
    $text=~s/(^<!\[CDATA\[)|(\]\]>$)//g;
    $text.=".";
    $text=~s/\.+$/\./;
    return $text;
}

sub UPTagging {
    # sous-programme d'étiquetage du fichier texte avec Udpipe
    system("../udpipe/udpipe-1.2.0-bin/bin-osx/udpipe --tokenize --tag --parse --tokenizer=presegmented ../udpipe/modeles/french-sequoia-ud-2.5-191206.udpipe corpus-titre-description.txt > corpus-titre-description.udpipe");

}

sub TTTagging {
    # sous-programme d'étiquetage du fichier XML avec TreeTagger
    system("../Tree-Tagger/tree-tagger -lemma -token -no-unknown -sgml ../Tree-Tagger/french-utf8.par pre-corpus-titre-description.xml > corpus-titre-description");
    system("perl ../Tree-Tagger/treetagger2xml-utf8.pl corpus-titre-description UTF8")
}

sub segmentationTD {
    # sous-programme pour la segmentation des phrases
    my ($arg1, $arg2)=@_; # il faut passer deux fichiers en argument

    # traitement du titre
    open my $tmp, ">:encoding(UTF-8)","title.txt";
    print $tmp $arg1;
    close $tmp;
    system("perl ../Tree-Tagger/tokenise-utf8.pl title.txt > title_bis.txt"); # notre fichier titre segmenté va être envoyé à title_bis.txt
    undef $/;
    open my $tmp2, "<:encoding(UTF-8)","title_bis.txt";
    my $segmentized_title=<$tmp2>;
    close $tmp2;

    # traitement de description
    open my $tmp, ">:encoding(UTF-8)","description.txt";
    print $tmp $arg2;
    close $tmp;
    system("perl ../Tree-Tagger/tokenise-utf8.pl description.txt > description_bis.txt"); # notre fichier description segmenté va être envoyé à description_bis.txt
    open my $tmp2, "<:encoding(UTF-8)","description_bis.txt";
    my $segmentized_description=<$tmp2>;
    close $tmp2;
    $/="\n";

    return $segmentized_title, $segmentized_description;
}
