#!/usr/bin/perl
#coding=utf-8
use strict;
use warnings;

# 使用chdir 改变当前的工作目录

chdir "/etc/" or warn "cannot chdir to /etc:$!";

# 文件名通配

my @all_files = glob "*";
# @all_files获得当前目录的所有文件，并按字母顺序排序，但不包括以点号开头的文件

my @pl_files = glob "*.pl";
# @pl_files 当前目录的所有pl文件

# 如果要一次匹配多种模式，可以在参数中要空格隔开各个模式

my @flies = glob "*.pl *.txt";
print "**************All Files*************\n";
foreach(@all_files)
{
	print "$_\n";
}

print "**************All *.pl Files*************\n";
foreach(@pl_files)
{
	print "$_\n";
}

print "***************.pl and *.txt*************\n";
foreach(@flies)
{
	print "$_\n";
}


