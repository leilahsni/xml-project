#!/usr/bin/perl
binmode(STDOUT, ":utf8"); # permet de préciser l'encodage des données de sortie

=for comment
 usage : perl parcours-arborescence-fichiers repertoire-a-parcourir
 Ce programme prend en entrée le nom du répertoire contenant les fichiers
 à traiter.
 Il construit en sortie un fichier structuré contenant sur chaque
 ligne le nom du fichier et le résultat du filtrage.
=cut
#-----------------------------------------------------------
my $rep="$ARGV[0]"; # notre répertoire 2021 sera notre premier argument
my $rubrique="$ARGV[1]"; # il faut choisir une rubrique : ici j'ai choisi la rubrique culture qui porte le numéro 3246
$rep=~ s/[\/]$//; # on s'assure que le nom du répertoire ne se termine pas par un "/"

open my $txt_output, ">:encoding(UTF-8)", "corpus-titre-description.txt";
open my $xml_output, ">:encoding(UTF-8)", "pre-corpus-titre-description.xml";
#----------------------------------------
my $header = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<corpus>\n"; 
print $xml_output $header; # on envoie notre header XML dans note fichier de sortie

&parcoursarborescencefichiers($rep); # appel de la fonction de recursion

print $xml_output "</corpus>"; # balise racine fermante

# on oublie pas de fermer nos fichiers !
close $txt_output;
close $xml_output;

exit;

#----------------------------------------------
#sous-programmes

sub parcoursarborescencefichiers {
    my $path = shift(@_); # on récupère notre premier dossier (ici 2021)
    opendir(DIR, $path) or die "can't open $path: $!\n"; # on l'ouvre
    my @files = readdir(DIR); # on lit ce répertoire
    closedir(DIR); # on le ferme
    foreach my $file (@files) {
	next if $file =~ /^\.\.?$/;
	$file = $path."/".$file; # on ajoute le nom des objets dans notre dossier à notre chemin
	if (-d $file) { # si cet objet est un repertoire, on refait ce qu'on a fait juste avant
	    &parcoursarborescencefichiers($file);
	}
	if (-f $file) { #sinon c'est un fichier, alors on continue...
        if ($file =~ /$rubrique.+\.xml$/) {
            open my $input, "<:encoding(UTF-8)", $file;
            undef $/; #undef permet de supprimer une variable
            my $line=<$input>; # lire chaque ligne du fichier
            close($input);

            while ($line=~/<item><title>(.+?)<\/title>.+?<description>(.+?)<\/description>/gs) { # le g est très important pour que le programme passe à l'occurence suivante et ne boucle pas à l'infini !
                my $title = $1; # correspond à la première parenthèse
                my $description=$2; # correspond à la seconde parenthèse
                my ($clean_title, $clean_description)=&clean($title, $description); # définir un sous-programme (procedure) -> permet d'appeler un bout de code; équivalent d'une fonction

                print $txt_output "TITRE : $clean_title \n DESCRIPTION : $clean_description \n---------------------\n";
                print $xml_output "<item>\n<titre>$clean_title</titre>\n<description>$clean_description</description>\n</item>\n";
            }
        }
	}
    }
}

sub clean { # cette fonction sert à nettoyer nos titres et descriptions
    my @clean_table=();

    foreach my $var (@_) {
        $var=~s/<!\[CDATA\[//;
        $var=~s/\]\]>//;
        push @clean_table, $var;
    }

    return @clean_table
}