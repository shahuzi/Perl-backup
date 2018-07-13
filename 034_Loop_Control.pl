#!/usr/bin/perl
#coding=utf-8
use strict;
use warnings;

# # last操作符
# # last操作符能够立即终止循环，和C中的break一样
# # last能终止while for foreach until 裸块等
# # last操作符只会对运行中的最内层循环块发挥作用

# while(<STDIN>)
# {
	# if(/__END__/)
	# {
		# last;
	# }
	# elsif(/fred/)
	# {
		# print;
	# }
# }

# # next操作符
# # 类似C中的continue


# # redo操作符
# # 它能将控制返回到本次循环的定做，不经过任何条件测试
# # 也不会进入下一次循环
# # redo在循环块嵌套时也只对最内层循环起作用
# # next和redo最大的区别是next会正常继续下一次迭代，而redo则会重新执行这次的迭代

# # 打字测试程序
# my @words = qw/Fred barney pebbles dino wilma betty/;
# my $errors = 0;
# foreach(@words)
# {
			# # redo操作符会跳到这里
	# print "Type the word '$_':";
	# chomp(my $try = <STDIN>);
	# if ( $try ne $_)
	# {
		# print "Sorry - That's not right.\n";
		# $errors++;
		# redo;
	# }
# }
# print "You've compeleted the test, with $errors errors.\n";


# 一个程序体验三种操作符工作方式的区别

foreach(1..10)
{
	print "Iteration number $_.\n\n";
	print "Please choose:last, next, redo, or none of the above? ";
	chomp(my $choice = <STDIN>);
	print "\n";
	last if $choice =~ /last/i;
	next if $choice =~ /next/i;
	redo if $choice =~ /redo/i;
	print "That wasn't any of the choices... onward!\n\n";
}


# 带标签的块
# 有时候需要用标签从内层对外层的循环进行控制
# 要对某个循环块加上标签，通常只要将标签及一个冒号放在循环前面就行了
# 之后在循环里，若有需要就可以在last、next或redo的后面填上这个标签

LINE:while(<>)
{
	foreach(split)
	{
		print "$_\n";
		last LINE if /__END__/; # 跳出表情为LINE的循环
	}
}



