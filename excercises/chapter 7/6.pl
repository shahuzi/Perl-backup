use strict;
use warnings;

open IN,'test.txt';
while(<IN>)
{

	if(/fred/ and /wilma/) # 也可以用两层If，不会有先后顺序的问题
	{
		print;
	}
}
close IN;