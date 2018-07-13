#!/usr/bin/perl
#coding=utf-8
use strict;
use warnings;

# 使用unless意味着，要么条件为真，要么执行某块代码
# unless(条件){代码块}
# 等效于如下
# if(条件){}
# else{代码块}

# 即当条件为假时，执行该代码块

$_ = "Hello world";
unless(/Hi\w+/)
{
	print "There don't have a Hi\n";
}

