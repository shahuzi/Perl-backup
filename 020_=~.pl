# 操作绑定符 =~ 能让perl拿右边的模式来匹配左边的字符串，
# 而非匹配$_
use strict;
use warnings;

my $some_other = "I dream of big house\n";

if ($some_other =~ /\bdr/)
{
	print "It seems that there is a 'dream'\n";
}

# 操作绑定符的优先级相当高！！！

