use strict;
my $count = 5;
# print "without &&\n";
# while(<STDIN>)  # 不加条件等效于 while($line = <STDIN>),加了条件就要写完整
# {				# 一直获取输入并打印
	# $count -= 1;
	# print "I saw $_";

# }
# print "with &&\n";
# $count = 3;
# while((my $line = <STDIN>)  && $count>0)
# {
	# $count -= 1;
	# print "I saw $line";
# }

@ARGV = qw \lary\;  # 指定读取lary，不管在命令行输入什么

# while (<>)  # 使用钻石操作符，当perl xxx.pl后接文件名时，
            # 例perl xxx.pl hello 就会读取hello里的内容
# {
	# chomp;
	# print "It was $_ that I saw!\n";
	# print "$_";
# }
print <>;