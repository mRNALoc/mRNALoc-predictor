#!/usr/bin/perl

open (FH,"$ARGV[0]") or die;

while($line=<FH>)
{
    chomp($line);

if ($line=~m/>/)
{

    $line=~s/>//g;

    open (out,">$ARGV[2]/$line.temp") or die;

   print out ">$line\n";
    $next_line=<FH>;
    chomp($next_line);
    print out "$next_line\n";

    open (FH2,"$ARGV[1]") or die;
while($line2=<FH2>)
    
{
    chomp($line2);

    @array1=split(/\#/,$line2);
    @N_ter=split(/\-/,$array1[2]);
    @M_ter=split(/\-/,$array1[3]);
    @C_ter=split(/\-/,$array1[4]);

    open (NO,">>$ARGV[2]/$line\_N.fasta") or die;
    open (MO,">>$ARGV[2]/$line\_M.fasta") or die;
    open (CO,">>$ARGV[2]/$line\_C.fasta") or die;

    $M_part=$N_ter[1]+$N_ter[1];
   $C_part=$C_ter[1]-($N_ter[1]+$N_ter[1]);

if ($array1[0] eq $line)
{

   $N_sub_string = substr($next_line, 0, $N_ter[1]); 

    $M_sub_string = substr($next_line, $N_ter[1], $N_ter[1]);
 
    $C_sub_string = substr($next_line, $M_part, $C_part); 

   print NO ">$line\_0_$N_ter[1]\n";
    print NO "$N_sub_string\n";
 
   $N_ter[1]=$N_ter[1]+1;
   print MO ">$line\_$N_ter[1]_$M_part\n";
    print MO "$M_sub_string\n";
   $M_part=$M_part+1;
   print CO ">$line\_$M_part\_$C_ter[1]\n";
    print CO "$C_sub_string\n";

}
}
}
}
#system"rm $ARGV[2]/*temp";

