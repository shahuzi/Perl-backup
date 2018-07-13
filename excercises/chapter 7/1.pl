use strict;
use warnings;

open IN,'test.txt';
while(<IN>)
{
	# if (/.*fred.*/)
	# {
		# print "$_";
	# }
	if(/fred/)
	{
		print;
	}
}
close IN;