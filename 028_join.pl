use strict;
use warnings;

# join和split的功能恰恰相反，join会把这些片段合成一个字符串

# join的第一个参数可以理解为浇水，它可以是任何字符串，其余的参数是一串片段，Join会把浇水涂进每个片段之间，并返回结果字符串，即第一个参数是分隔符。
my $x = join ":",4,6,8,10,12; 
print "$x\n";             #$x 为"4:6:8:10:12"

my @line = qw/She said that she was sad/;
my $line = join ",", @line;
print "$line\n";