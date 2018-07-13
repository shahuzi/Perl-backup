#!/usr/bin/perl
#coding=utf-8
use strict;
use warnings;

# 在字符串内用index搜索

# 搜索子串，即找出它在主串中的相对位置，可借助index完成这个功能。

# $where = index($big,$small)
# perl会在$big字符串里寻找$small字符串首次出现的地方
# 并返回一个整数代表第一个匹配字符的位置，返回的字符位置是从零算起的。
# 若无法找到，则返回-1

my $stuff = "Hello world";
my $where = index($stuff,"wor");
print "Found 'wor' in the ${where}th character\n";


# index 函数每次都会返回首次出现子串的位置，index的第三个参数为指定开始搜索的位置，这样，index 就不会从字符串的最开头寻找，而是从该参数指定的位置寻找
my $stuff1 = "Hewlo world";
my $where1 = index($stuff1,"w",3);
my $where2 = index($stuff1,"w",2);
print "Found 'w' in the ${where1}th from the 3th character\n";
print "Found 'w' in the ${where2}th from the 2th character\n";


# rindex可以搜索子串最后出现的位置，即从字符串最后开始找
my $dir = "/etc/passwd";
my $last_slash = rindex($dir,"/");
print "The last '/' in $dir is the ${last_slash}th character\n";  # 4th

# rindex也有可选的第三个参数，但是这里是用来限定返回的最大位置



# substr 
#　三个参数，输入字符串、从零起算的起始位置、子串的长度
# 第三个参数若省略，则会一直取到字符串的末尾

my $people = substr "Fred J. Flintstone",13;
print "'Fred J. Flinstone' ,startpoint 13 substr is $people\n";
# 起始位置可以是负值，表示倒数第几个字符

my $out = substr("some very long string",-3,2); # in

# substr 和 index 可以紧密合作

my $long = "some very long string";
my $right = substr($long,index($long,"l"));
print "the right l is '$right'\n";

# 若字符串是个变量，则可以修改字符串被选取的部分

my $string = "Hello world";
substr($string,0,5) = "Good evening";
print "The new string is $string\n";







