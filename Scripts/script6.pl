#!/usr/bin/perl

print"SeqID\tSVM_score\tLocation\n";
open (FH,"$ARGV[0]/Result") or die;

while($line=<FH>)

{
    chomp($line);

    @array=split(/\t/,$line);
    @name=split(/\_/,$array[0]);

open (FH1,"$ARGV[0]/header_file") or die;

while($line1=<FH1>)

{
    chomp($line1);

    @array1=split(/\t/,$line1);

    $array1[0]=~s/^>//g;
if ($name[0] eq $array1[1])
{
    print"$array1[0]\t$array[1]\t$array[2]\n";
}
}
}