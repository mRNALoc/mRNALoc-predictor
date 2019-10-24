#!/usr/bin/perl
system"ls $ARGV[0]/*.out2 >$ARGV[0]/out_list";

open (FH,"$ARGV[0]/out_list") or die;
while($line=<FH>)
{
    chomp($line);
    @array=split(/\//,$line);
    @array1=split(/\./,$array[1]);

    open (out,">$line.out3");


open (FH1,"$line") or die;

while($line1=<FH1>)
{
    chomp($line1);

if ($line1=~m/\:/)
{
    print out "$line1\n";
}
}
}

