use strict;
use warnings;

open IN,'test.txt';
while(<IN>)
{

	if(/[Ff]red/)
	{
		print;
	}
}
close IN;