use warnings;
use strict;

my $user = 'Jack';
my $age = 23;

printf "Hello,%s; you tell me you are %d years old!\n",
		$user,$age;
		
# %g 自动适应浮点数、整数或指数形式
printf "%g %g %g\n",5/2,51/17,51**17; # 2.5 3 1.0683e+029


my @items = qw (wilma dino pebbles);
my $format = "The items are:\n".("%10s\n" x @items);# 前面是标量上下文，使用@items的长度
printf $format,@items;

printf "The items are:\n".("%10s\n" x @items),@items;