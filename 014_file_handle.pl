use strict;
use warnings;

# open IN,"fred"; # 将fred打开，利用文件句柄IN对其进行操作
# open OUT1,">hello"; # 有>会新建一个文件
					# #如果原文件存在，覆盖原内容
# open OUT2,">>lary"; #两个>是以追加的方式来打开文件
					# #如果文件原本存在，新内容添加在后面

					
					# if ( ! open IN,"fred1") # 此处 会报错，因为没有fred1
# {
	# die "Cannot open fred1:$!"; # $!是从操作系统传来的信息
# }

if ( ! open IN,"fred") 
{
	die "Cannot open fred1:$!"; # $!是从操作系统传来的信息
}	
if ( ! open OUT1,">hello") 
{
	die "Cannot create hello:$!"; # $!是从操作系统传来的信息
}
if ( ! open OUT2,">>lary") 
{
	die "Cannot open lary:$!"; # $!是从操作系统传来的信息
}				
# while(<IN>)
# {
	# print "$_"; # 打印每一行的信息
# }
while(<IN>)  # 前面使用过文件句柄后，这里不能再用？
{
	chomp;
	print OUT2 "$_"."  This is caused by handle!\n";
}
				

					
# while(<OUT1>) # 会报错 Filehandle OUT1 opened only for output
				# 因为<>是输入，而OUT1已经指定是输出
# {
	# print "hello\n";
# }
my $age = 24;
print OUT1 "hello\n";        # 可以在IN的循环里print，实现将fred的内容处理后加入hello
printf OUT1 "The age is %d\n",$age; 
if ( ! open OUT2,">>lary") 
{
	die "Cannot open lary:$!"; # $!是从操作系统传来的信息
}					
		
	

close IN;
close OUT1;
close OUT2;
print "Sucess!";	