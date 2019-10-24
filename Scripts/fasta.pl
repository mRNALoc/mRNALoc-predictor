#!/usr/bin/perl

$f_name=$ARGV[0];

if($f_name eq '')
{
    #print "ERROR!\nfasta.pl input output\n";
    print "ERROR!\nfasta.pl input\n";
    exit;
}
else
{


    open(FH,"$f_name") or die;

while($line=<FH>)
{
    chomp($line);

if ($line=~m/>/)
{

    $count++;
open (out,">>$ARGV[1]/header_file") or die;
$head=$line;

$line =~ s/[^a-zA-Z0-9,]//g;
$line =~ s/^_/>/g;

$next_line=<FH>;
chomp($next_line);
$next_line=~s/U/T/g;
@new=split(//,$next_line);


for($i=0;$i<=$#new;$i++)
{
if ($next_line=~m/b|d|e|f|h|i|j|k|l|m|n|o|p|q|r|s|u|v|w|x|y|z/i)
{
# print"$new[$i]====NON-STAN\n";

    last;

}
else
{


    print out "$head\t$line\n";
    print">$line\n";
    print"$next_line\n";
    last;

}

}
print"\n";
}
}
}
