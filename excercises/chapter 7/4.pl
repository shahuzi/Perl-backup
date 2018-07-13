use strict;
use warnings;

open IN,'test.txt';
while(<IN>)
{
	if(/[A-Z][a-z]+/) 
	{
		print;
	}
}
close IN;