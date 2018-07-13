use strict;
use warnings;
my $num = 0;
print "Please input the num of characters\n";
chomp($num = <STDIN>);
print "Please input some strings separtelly\n";
chomp(my @lines = <STDIN>);
# my @num=(1..9);
# my $zero = 0;
# my $cnt = $num/10;
# while($cnt>0)
# {
	# print @num,$zero;
	# $cnt-=1;
# }
print "1234567890" x ($num/10),"\n";  # 这个圆括号要加上，优先级问题
foreach(@lines)
{
	printf "%${num}s\n",$_;
}


