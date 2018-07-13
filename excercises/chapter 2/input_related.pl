print "Please input two number\n";
chomp($a = <STDIN>);
chomp($b = <STDIN>);
$c = $a*$b;
print "Their multiply is: $c \n";

print "Please input a string and a number\n";
$string = <STDIN>;
chomp($num = <STDIN>);
# $string = $string x $num;
$string x= $num;

print "The result is:\n$string";
