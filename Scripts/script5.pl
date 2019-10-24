#!/usr/bin/perl

    open (FH,"$ARGV[0]/final") or die;


while($line=<FH>)

{
    chomp($line);

    @array=split(/\#/,$line);

if (($array[2]>$array[3]) &&  ($array[2]>$array[4]) && ($array[2]>$array[5]) &&  ($array[2]>$array[6]))
{

if ($ARGV[1] <$array[2])
{
    print"$array[0]\t$array[2]\tEndoplasmic_Reticulum\n";
}

if ($ARGV[1] >$array[2])
{
    print"$array[0]\t$array[2]\tNo Location Found\n";
}

}
if (($array[3]>$array[2]) &&  ($array[3]>$array[4]) && ($array[3]>$array[5]) &&  ($array[3]>$array[6]))
{
 
if ($ARGV[1] <$array[3])
{
    print"$array[0]\t$array[3]\tExtracellular_region\n";
}

if ($ARGV[1] >$array[3])
{

    print"$array[0]\t$array[3]\tNo Location Found\n";
}

}

if (($array[4]>$array[2]) &&  ($array[4]>$array[3]) && ($array[4]>$array[5]) &&  ($array[4]>$array[6]))
{
if ($ARGV[1] <$array[4])
{
    print"$array[0]\t$array[4]\tCytoplasm\n";
}
if ($ARGV[1] >$array[4])
{
    print"$array[0]\t$array[4]\tNo Location Found\n";
}

}
if (($array[5]>$array[2]) &&  ($array[5]>$array[3]) && ($array[5]>$array[4]) &&  ($array[5]>$array[6]))
{
if ($ARGV[1] <$array[5])
{ 
    print"$array[0]\t$array[5]\tMitochondria\n";
}
if ($ARGV[1] >$array[5])
{ 
    print"$array[0]\t$array[5]\tNo Location Found\n";
}

}
if (($array[6]>$array[2]) &&  ($array[6]>$array[3]) && ($array[6]>$array[4]) &&  ($array[6]>$array[5]))
{
if ($ARGV[1] <$array[6])
{
    print"$array[0]\t$array[6]\tNucleus\n";
}
if ($ARGV[1] >$array[6])

{

    print"$array[0]\t$array[6]\tNo Location Found\n";
}
}
}

