@lines = <STDIN>;
@lines = sort @lines;
print @lines;

chomp(@lines);
# 以一行的方式输出
print "@lines\n";