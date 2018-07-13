use strict;
#!/usr/bin/perl
use warnings;

# @lines = `perldoc -u -f atan2`;
# # @lines = system("perldoc -u -f atan2"); # 两行功能不一样
# foreach (@lines){
	# s/\w<([^>]+)>/\U$1/g;
	# print;
# }

# print 'hello\n';  # 单引号内\n不是换行符
# print 'yes'."\n";


# print "(1,2,3,4)\n";


# $a = (1,2,3,4);
# print "$a \n";

# @a = (1,2,3,4);
# print "@a \n";

my %hash = qw( 26 62 36 63);
sub numerically{ $a <=> $b};

foreach(sort numerically keys %hash)
{
	print "$_ => $hash{$_} \n";
}