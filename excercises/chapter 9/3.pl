use strict;
use warnings;


$^I = '.out';
while(<>)
{
	s/fred/wilma/ig;
	print;
}