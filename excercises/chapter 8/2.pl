#!usr/bin/perl
# coding=utf-8
use strict;
use warnings;

open IN,">>test.txt";

# while(<>)
# {
	# chomp;
	# print IN "$_\n";
	# if(/(?<name1>\w+a)/)
	# {
		# print "$+{name1}\n";
		
	# }
# }
close IN;
open IN,"test.txt";
while(<IN>)
{
	chomp;
	if(/(\w*a\b)/)
	{
		print "$1\n";
	}
	
}
close IN;