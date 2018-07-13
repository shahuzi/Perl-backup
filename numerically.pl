use strict;
use warnings;



sub numerically { $a <=> $b };

my @array = (1,2,3,4);
print numerically(@array);