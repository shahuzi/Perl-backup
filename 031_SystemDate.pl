use strict;
use  warnings;

chomp(my $date = `date`);  
print "date is: $date\n"; # date is: 当前日期: 2018/02/10 周六

my $date1 = localtime;
print "date1 is: $date1"; # date1 is: Sat Feb 10 12:11:00 2018