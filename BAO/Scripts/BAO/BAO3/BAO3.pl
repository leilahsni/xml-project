#!/usr/bin/perl
use utf8;
binmode(STDOUT, ":utf8");

my $file=shift @ARGV; # input
my @PATTERN=@ARGV; # patron morphosyntaxique
open my $input, '<:encoding(utf-8)', $file;
my @LIST=<$input>; # mettre fichier dans liste

close ($input);

while (my $line=shift @LIST) {

=pod
	check that line in $line corresponds to first lexico-syntactic pattern $PATTERN
	then read as many lines as there are in $PATTERN
=cut
	my $term="";

	if ($line=~/<element><data type="type">$PATTERN[0]<\/data><data type="lemma">[^<]+?<\/data><data type="string">([^<]+?)<\/data><\/element>/) {

		$term=$term.$1; # on récupère la forme grâce à une expression régulière qui utilise le patron n°1
		my $index=1;
		my $length=1;
		
		while (($LIST[$index-1]=~/<element><data type="type">($PATTERN[$index])<\/data><data type="lemma">[^<]+?<\/data><data type="string">([^<]+?)<\/data><\/element>/) and ($index <= $#PATTERN)) {

			$term.=" ".$2; # on récupère la forme qui correspond au patron d'après
			$index++;
			$length++;

		}

		if ($length==$#PATTERN+1) {
			$dictPattern{$term}++; # on ajoute le terme qui match à un dictionnaire
			$nbTerm++;
		}
	
	}

}

open my $outfile, ">:encoding(UTF-8)", "perlIsTheBigOne.txt"; # on ouvre un fichier output
print $outfile "$nbTerm éléments trouvés\n"; # on envoie le nombre de termes

foreach my $pattern (sort {$dictPattern{$b} <=> $dictPattern{$a} } keys %dictPattern) {
	print $outfile "$dictPattern{$pattern}\t$pattern\n"; # on envoie également les formes qui correspondent aux patrons
}

close($outfile);
