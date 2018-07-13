# 正则表达式的简易模式
# 若模式匹配的对象是$_的内容，只要把模式写在一对正斜线中就可以

use strict;
use warnings;
$_ = "yabba dabba doo";
if(/abba/)
{
	print "It matched!\n";
}

# 括号可以用来分组
if (/y(....) d\1/) # y之后，四个任意字符加上一个空格，连续出现两次（两次要一样）。
                   # 这个\1表示在d之后重复这些内容
{
	print "It matched the same after y and d!\n";
}

# 也可以用多个括号来分成多组，每组都有自己的反向引用
# 可以用括号来定一个非换行字符的组，然后在跟上一个非换行
# 字符的组。然后用反向引用\2和\1来构成回文模式，如abba：

if(/y(.)(.)\2\1/)  # 同abba型想匹配
{
	print "It matched abba type char!\n";
}

# 括号的顺序：数左括号（包括嵌套）

if(/y((.)(.)\3\2) d\g{1}/) #\1是外层括号，代表abba
                        #\2是a,\3是b
						# 使用\g{N}的方法，可以去除反向引用的二义性
{
	print "Yes!\n";
}

$_ = "aa11bb";
if (/(.)\g{1}11/) # 此处若是用\1作反向引用，就出现了\111。perl会
				  # 把它当作第111组，从而导致编译失败
{
	print "Very good!\n";
}

# \g{N}的另一个好处是，我们甚至可以用那个负数来做相比
# 绝对位置的反向引用，如上面的例子
# 即这样是相对引用

if (/(.)\g{-1}11/)
{
	print "very very good\n";
}

if (/(.)(.)\g{-1}11/) # 这个匹配不成功过
{
	print "very very good good!\n";
}

# 字符集
# 字符集是指一串可能出现的字符集合，通过写在方括号[]内来表示，它只能匹配单个字符，
# 但可以是字符集里列出的任何一个。
$_ = "The HAL-9000 requires authorization to continue.";
if(/HAL-[0-9]+/) # HAL-后面，数字出现一次以上
{
	print "The string mentioned some model of HAL computer\n"; 
}

# 可以在字符集内部开头的地方加上脱字符^来表示除字符集外的任何字符
# [^nop] 指出nop以外的任意字符

# 有些字符集十分常用，因此有自己的简写
# 如[0-9]简写成\d，
# \w表示[A-Za-z0-9_]，数字，字母，下划线
# 它们都只会匹配一个字符
# 但是加上修饰符，\w就就可以匹配单词，\d匹配一串数字
# 例：/fred \w+ barney/
# \s表示[\f\t\n\r]，也就是说\s擅长处理空白
# 同样它一般不单独使用，而是使用\s*来匹配任何数目的空白
# 或者用\s+匹配一个以上的空白字符
# perl 5.10后增加了更多字符集描述空白
# \h能匹配横向空白，即包含制表符和空格的字符集[\t ]
# \v能匹配纵向，即[\f\n\r]
# \R能匹配任何类型的断行，这给跨操作系统断行匹配带来了便利









