# 命名捕捉

use strict;
use warnings;

# perl 5.10引入正则表达式命名捕捉的概念
# 命名捕捉的结果会进入一个特殊的哈希%+
# 其中的键就是在捕捉时候使用的特殊标签，其中
# 的值则是被捕获的串
# 为捕获的串加标签的方法是使用
# (?<LABEL>PATTERN)这样的写法

my $name = "Fred or Barney";
if ( $name =~ m/(?<name1>\w+) (?:and|or) (?<name2>\w+)/)
{
	print "I saw $+{name1} and $+{name2}\n";
}

# 在使用捕捉标签之后，反向引用也带来了方便
# 现在可以使用\g{label}这样的引用方法

my $people = "Fred Flinstone and Wilma Flinstone";
if ( $people =~ m/(?<name1>\w+) and \w+ \g{name1}/)
{
	print "I saw $+{name1} two times!\n";
}