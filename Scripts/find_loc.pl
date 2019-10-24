#!/usr/bin/perl

open (FH,"mRNA_id") or die;
while($line=<FH>)
{
    chomp($line);


    $loc=`grep -w '$line' ../../../../../../step2/output2.txt`;

@array=split(/\#/,$loc); 
#@array1=split(/\,/,$array[1]); 

   print"$array[0],$array[1]\n";
}
