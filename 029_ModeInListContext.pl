use strict;
use warnings;

# 使用split的时候，模式指定的分隔符并非真正有用的数据
#字段，但有时候，指定想要留下的部分反而更简单

# 在列表上下文中使用模式匹配操作符m//时，如果模式匹配
#成功，那么返回的是所有捕获的变量的列表，如果匹配
#失败，则会返回空列表

$_ = "Hello there, neighbor!";
my ($first,$second,$third) = /(\S+) (\S+), (\S+)/;

print "$second is my $third\n"; # there is my neighbor!

# 注意到该模式中没有用到=~绑定操作符，所以该模式匹配是针对$_进行的

# 同样/g能够用在m//上，其效果就是让模式能够匹配到字符串
# 的许多地方

my $text = "Fred dropped a 5 ton granite block on Mr. Slate";

my @words = ($text =~ /([a-z]+)/ig);
print "Result:@words\n"; # Result:Fred dropped a ton granite block on Mr Slate

# 这就像手动实现了split的功能，不过并非指定想要去除的部分，反而是指定想要留下的部分。