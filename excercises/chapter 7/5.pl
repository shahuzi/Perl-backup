use strict;
use warnings;

open IN,'test.txt';
while(<IN>)
{
	if(/(\S)\g{1}/) 
	{
		print;
	}
}
close IN;