#!usr/bin/perl
# coding=utf-8

use strict;
use warnings;

# 使用s///替换

# 简单的例子
$_ = "He's out bowling with Barney tonight.";
s/Barney/Fred/; # 用Fred替换Barney
print "$_\n"; # He's out bowling with Fred tonight.

# 若替换失败，则什么都不会发生，变量也不受影响

# 复杂的例子
s/with (\w+)/against $1's team/;
print "$_\n"; # He's out bowling against Fred's team tonight.

#s///返回的是布尔值替换成功时为真，否则为假

# 即使有其他可替换部分，s///也只会进行一次替换
# /g修饰符可以上s///进行所有可能的，不可重复的替换

$_ = "home, sweet home!";
s/home/cave/g;
print "$_\n"; # cave, sweet cave!


#一个常见的全局替换是缩减空白，也就是将任何连续的空白转换成单一空格

$_ = "Input    data\t may have extra whitespace.";

s/\s+/ /g;
print "$_\n"; # Input data may have extra whitespace.

# 如何删除开头和结尾的空白
# 只需两步
# s/^\s+//;
# s/\s+$//;






























