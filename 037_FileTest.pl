#!/usr/bin/perl
#coding=utf-8
use strict;
use warnings;

# 文件测试操作符
# 在运行创建新文件的程序之前，先检查指定的文件是否存在
# 要达到此目的，可以用-e文件测试操作符来测试文件策在与否

my $filename = "fred";

open OUT,$filename;
warn "Oops! A file called '$filename' already exists.\n" if -e $filename;


# 假设我们需要某个程序的配置文件保持每周或每两周更新一次，如果文件在过去的28天里都没变动过，显然出了问题
# 此处用的是文件句柄
# 此处用5天测试
open CONFIG, "cat";
warn "Config file is looking pretty old!\n" if -M CONFIG > 1; 
close CONFIG;
close OUT;