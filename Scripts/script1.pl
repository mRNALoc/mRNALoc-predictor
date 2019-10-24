#!/usr/bin/perl

open (FH,"$ARGV[0]");

while($line=<FH>)
{

    chomp($line);
if ($line=~m/^>/)

{
    $line=~s/>//g;

    print"$line#";
    $next_line=<FH>;
    chomp($next_line);

    @array=split(//,$next_line);
    $count=0;
for ($i=0;$i<=$#array;$i++)
{
    $count++;
#    print"@array==$count===$next_line\n";


}

$total=$count;
$N_ter=$total/3;
#$C_ter=$total/3;

my $N_ter_rounded = int($N_ter + 0.5);
my $C_ter_rounded = int($C_ter + 0.5);

$M_part=$N_ter_rounded+1;
$range1=$M_part+$N_ter_rounded;
$range2=$range1+1;
$C_part=$range1+($total-$range1);

print "$total#1-$N_ter_rounded#$M_part-$range1#$range2-$C_part\n";
#print"$total#1-$N_ter_rounded#$M_part-$range1#$range2-$total\n";

}
}
