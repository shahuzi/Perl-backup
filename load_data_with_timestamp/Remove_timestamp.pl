use strict;
use warnings;

open IN,"001.txt";
open OUT,">processed.txt";

while(<IN>)
{
	if(/(\d\.\d+)\s+20.*/)
	{
		print OUT "$1\n";
	}
}