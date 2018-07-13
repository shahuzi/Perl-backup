use strict;
use warnings;

open IN,'test.txt';
while(<IN>)
{
	if(/\./) 
	{
		print;
	}
}
close IN;