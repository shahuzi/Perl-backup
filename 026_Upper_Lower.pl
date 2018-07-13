use strict;
use warnings;

# 使用\U将其后所有的字符转换成大写
# 使用\L将其后所有的字符转换成小写

$_ = "I saw Barney with Fred.";
s/(fred|barney)/\U$1/gi; # 全部转换成大写，注意/i是针对全面的模式忽略大小写
print "$_\n";			 # I saw BARNEY with FRED.


s/(fred|barney)/\L$1/gi; # 全部转换成小写
print "$_\n";	         # I saw barney with fred.

# 默认情况下，它们会影响之后全部的替换字符串，可以用\E结束大小写转换的影响


s/(\w+) with (\w+)/\U$2\E with $1/i; # I saw FRED with barney.
# 如果没有\E,I saw FRED WITH BARNEY.
print "$_\n";	

# 使用小写形式(\l \u)，它们只会影响之后的第一个字符

s/(fred|barney)/\u$1/ig;

print "$_\n"; # I saw FRED with Barney.

# 它们也可以并用，使用\u和\L来表示全部转小写，但首字母大写
s/(fred|barney)/\u\L$1/ig;
print "$_\n";          # I saw Fred with Barney.

# 这些大小写转换适用于任何双引号内的字符串




