my $first=0;
my $lastposition="";
open(INPUT,"<:encoding(utf-8)",$ARGV[0]);
open(OUTPUT,">:encoding(utf-8)","$ARGV[0].xml");
print OUTPUT "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n";
print OUTPUT "<baseudpipe>\n";
my $first=0;
my $tempvar = "";
while (my $ligne=<INPUT>) {
	next if ($ligne=~/^$/);
	$ligne=~s/\r//;
	if ($ligne=~/^([^\t]*)	([^\t]*)	([^\t]*)	([^\t]*)	([^\t]*)	([^\t]*)	([^\t]*)	([^\t]*)	([^\t]*)	([^\t]*)$/) {
		my $a1=$1;
		my $a2=$2;
		my $a3=$3;
		my $a4=$4;
		my $a5=$5;
		my $a6=$6;
		my $a7=$7;
		my $a8=$8;
		my $a9=$9;
		my $a10=$10;
		chomp($a1);chomp($a2);chomp($a3);chomp($a4);chomp($a5);chomp($a6);chomp($a7);chomp($a8);chomp($a9);chomp($a10);
		$a1=~s/&/&amp;/g;
		$a2=~s/&/&amp;/g;
		$a3=~s/&/&amp;/g;
		$a4=~s/&/&amp;/g;
		$a5=~s/&/&amp;/g;
		$a6=~s/&/&amp;/g;
		$a7=~s/&/&amp;/g;
		$a8=~s/&/&amp;/g;
		$a9=~s/&/&amp;/g;
		$a10=~s/&/&amp;/g;
		if (($a1 == 1 and ($lastposition ne "1-2")) or ($a1 eq "1-2")) {
			if ($first > 0) {print OUTPUT "</p>\n";}
			print OUTPUT "<p>\n";
		}
		$first++;
		print OUTPUT "<item><a>$a1</a><a>$a2</a><a>$a3</a><a>$a4</a><a>$a5</a><a>$a6</a><a>$a7</a><a>$a8</a><a>$a9</a><a>$a10</a></item>\n";
		$tempvar = $a1;
		$lastposition=$a1;
	}
}
close(INPUT);
print OUTPUT "</p>\n</baseudpipe>\n";
close(OUTPUT);
