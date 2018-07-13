#!/usr/bin/perl
$name = 'friend';
# gt 大于，按照ASCII码排列
if ('friend' gt 'fredee')
{  

	print "'${name}' is greater than 'fred'\n"; 
}
else
{
	print "'$name' is littler than 'fred'\n";
}

$is_bigger = $name lt 'love';
if ($is_bigger)
{
	print "$name is littler than love\n";
}
else
{
	print "$name is greater than love\n";
}