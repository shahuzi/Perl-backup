use strict;
use warnings;

# 起始锚位^和结尾锚位$
# 使用其实锚位，假设^fred，则fred只能出现在字符串的开头
# 结尾锚位类似
# 这两个经常结合使用，以匹配完整的字符串
# /^\s*$/ 可以匹配空白行

$_ = "      	";
if (/^\s*$/ )
{
	print "It do is a blank line\n";
}

# \b 是单词边界锚位，它能匹配任何单词的首尾。
# 因此/\bFred\b/只可以匹配一模一样的Fred.
# 这里的单词可以是字母、数字、下划线组成的
# 如果只使用一遍，则从一边匹配
# 如/\bhunt/ 可以匹配hunt,hunting,hunter
#   /stone\b/可以匹配standstone,filntstone
$_ = "fred";
if (/\bfred\b/)
{
	print "Yes!!!\n";
}



