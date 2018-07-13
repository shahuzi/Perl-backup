#!/usr/bin/perl
#coding=utf-8
use strict;
use warnings;


# 定义否操作符
# my $variable = $variable{first} // 1;
# 如果$variable{first}已经定义则保留原值，否则给它赋值1
foreach my $try(0,undef,'0',1,25)
{
	print "Trying [$try] ----> ";
	my $value = $try // 'default';
	print "\t got [$value]\n";
}