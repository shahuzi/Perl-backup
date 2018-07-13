#!/usr/bin/perl
#coding=utf-8
use strict;
use warnings;

# util相当于while颠倒了

my $j = 10;
my $i = 1000;
until ( $j >  $i)  # 当$j<=$i时，一直执行，直到$j>$i退出
{
	$j *= 2;
}
print "$j\n";