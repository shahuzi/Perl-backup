use strict;
use warnings;

print "Please input some strings separtelly\n";
chomp(my @lines = <STDIN>);
# my @num=(1..9);
# my $zero = 0;
# my $cnt = 5;
# while($cnt>0)
# {
	# print @num,$zero;
	# $cnt-=1;
# }
print "1234567890" x 5,"\n";
foreach(@lines)
{
	printf "%20s\n",$_;
}


