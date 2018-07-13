#!/usr/bin/perl
#coding=utf-8
use strict;
use warnings;

# 在现有的目录下建立新目录
mkdir "fredd",0755 or warn "Cannot make fred directory:$!";

# 其中0755赋予你所有的权限，而其他人只能读取却不能更改任何内容，0755是个八进制的三位数


# 使用rmdir 可以删除空的目录
# 如果目录非空，可以先用unlink来删除目录的内容，再试着移除已经清空的目录

