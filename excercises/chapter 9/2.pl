use strict;
use warnings;


$^I = '.out';
while(<>)
{
	s/fred/Larry/ig;
	print;
}