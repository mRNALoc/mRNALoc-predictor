#!/usr/bin/perl

open (FH1,"$ARGV[0]/k2_input_N.out.out2.out3") or die;
open (out1,">$ARGV[0]/k2_input_N.out.out2.out3.temp") or die;
while($line1=<FH1>)
{
    chomp($line1);

    @array1=split(/\s+/,$line1);

    $count_a=0;
    print out1 "+1 ";

    for($a=0;$a<=$#array1;$a++)
{
    $count_a++;
    @val1=split(/\:/,$array1[$a]);
    print out1 "$count_a:$val1[1] ";
}
print out1 "\n";
}
    open (FH2,"$ARGV[0]/k2_input_M.out.out2.out3") or die;
    open (out2,">$ARGV[0]/k2_input_M.out.out2.out3.temp") or die;
while($line2=<FH2>)
{
    chomp($line2);

    @array2=split(/\s+/,$line2);

    $count_b=$count_a;
    for($b=0;$b<=$#array2;$b++)
{


    $count_b++;

    @val2=split(/\:/,$array2[$b]);

    print out2 "$count_b:$val2[1] ";

}
print out2 "\n";
}

    open (FH3,"$ARGV[0]/k2_input_C.out.out2.out3") or die;
    open (out3,">$ARGV[0]/k2_input_C.out.out2.out3.temp") or die;
while($line3=<FH3>)
{
    chomp($line3);

    @array3=split(/\s+/,$line3);

    $count_c=$count_b;
    for($b=0;$b<=$#array3;$b++)
{


    $count_c++;

    @val3=split(/\:/,$array3[$b]);

    print out3 "$count_c:$val3[1] ";

}
print out3 "\n";
}

######k3 starts#####
open (FH4,"$ARGV[0]/k3_input_N.out.out2.out3") or die;
open (out4,">$ARGV[0]/k3_input_N.out.out2.out3.temp") or die;
while($line4=<FH4>)
{
    chomp($line4);

    @array4=split(/\s+/,$line4);

    $count_d=$count_c;

    for($d=0;$d<=$#array4;$d++)
{
    $count_d++;
    @val4=split(/\:/,$array4[$d]);

    print out4 "$count_d:$val4[1] ";
}
print out4 "\n";
}
    open (FH5,"$ARGV[0]/k3_input_M.out.out2.out3") or die;
    open (out5,">$ARGV[0]/k3_input_M.out.out2.out3.temp") or die;
while($line5=<FH5>)
{
    chomp($line5);

    @array5=split(/\s+/,$line5);

    $count_e=$count_d;
    for($e=0;$e<=$#array5;$e++)
{

    $count_e++;

    @val5=split(/\:/,$array5[$e]);

    print out5 "$count_e:$val5[1] ";

}
print out5 "\n";
}

    open (FH6,"$ARGV[0]/k3_input_C.out.out2.out3") or die;
    open (out6,">$ARGV[0]/k3_input_C.out.out2.out3.temp") or die;
while($line6=<FH6>)
{
    chomp($line6);

    @array6=split(/\s+/,$line6);

    $count_f=$count_e;
    for($f=0;$f<=$#array6;$f++)
{

    $count_f++;

    @val6=split(/\:/,$array6[$f]);

    print out6 "$count_f:$val6[1] ";

}
print out6 "\n";
}
###### k4 starts ###
open (FH7,"$ARGV[0]/k4_input_N.out.out2.out3") or die;
open (out7,">$ARGV[0]/k4_input_N.out.out2.out3.temp") or die;
while($line7=<FH7>)
{
    chomp($line7);

    @array7=split(/\s+/,$line7);

    $count_g=$count_f;

    for($g=0;$g<=$#array7;$g++)
{
    $count_g++;
    @val7=split(/\:/,$array7[$g]);

    print out7 "$count_g:$val7[1] ";
}
print out7 "\n";
}
    open (FH8,"$ARGV[0]/k4_input_M.out.out2.out3") or die;
    open (out8,">$ARGV[0]/k4_input_M.out.out2.out3.temp") or die;
while($line8=<FH8>)
{
    chomp($line8);

    @array8=split(/\s+/,$line8);

    $count_h=$count_g;
    for($h=0;$h<=$#array8;$h++)
{

    $count_h++;

    @val8=split(/\:/,$array8[$h]);

    print out8 "$count_h:$val8[1] ";

}
print out8 "\n";
}

    open (FH9,"$ARGV[0]/k4_input_C.out.out2.out3") or die;
    open (out9,">$ARGV[0]/k4_input_C.out.out2.out3.temp") or die;
while($line9=<FH9>)
{
    chomp($line9);

    @array9=split(/\s+/,$line9);

    $count_i=$count_h;
    for($i=0;$i<=$#array9;$i++)
{

    $count_i++;

    @val9=split(/\:/,$array9[$i]);

    print out9 "$count_i:$val9[1] ";

}
print out9 "\n";
}
###### k5 starts####
open (FH10,"$ARGV[0]/k5_input_N.out.out2.out3") or die;
open (out10,">$ARGV[0]/k5_input_N.out.out2.out3.temp") or die;
while($line10=<FH10>)
{
    chomp($line10);

    @array10=split(/\s+/,$line10);

    $count_j=$count_i;

    for($j=0;$j<=$#array10;$j++)
{
    $count_j++;
    @val10=split(/\:/,$array10[$j]);

    print out10 "$count_j:$val10[1] ";
}
print out10 "\n";
}
    open (FH11,"$ARGV[0]/k5_input_M.out.out2.out3") or die;
    open (out11,">$ARGV[0]/k5_input_M.out.out2.out3.temp") or die;
while($line11=<FH11>)
{
    chomp($line11);

    @array11=split(/\s+/,$line11);

    $count_k=$count_j;
    for($k=0;$k<=$#array11;$k++)
{

    $count_k++;

    @val11=split(/\:/,$array11[$k]);

    print out11 "$count_k:$val11[1] ";

}
print out11 "\n";
}

    open (FH12,"$ARGV[0]/k5_input_C.out.out2.out3") or die;
    open (out12,">$ARGV[0]/k5_input_C.out.out2.out3.temp") or die;
while($line12=<FH12>)
{
    chomp($line12);

    @array12=split(/\s+/,$line12);

    $count_l=$count_k;
    for($l=0;$l<=$#array12;$l++)
{

    $count_l++;

    @val12=split(/\:/,$array12[$l]);

    print out12 "$count_l:$val12[1] ";

}
print out12 "\n";
}


system"paste -d ',' $ARGV[0]/k2_input_N.out.out2.out3.temp $ARGV[0]/k2_input_M.out.out2.out3.temp $ARGV[0]/k2_input_C.out.out2.out3.temp $ARGV[0]/k3_input_N.out.out2.out3.temp $ARGV[0]/k3_input_M.out.out2.out3.temp $ARGV[0]/k3_input_C.out.out2.out3.temp $ARGV[0]/k4_input_N.out.out2.out3.temp $ARGV[0]/k4_input_M.out.out2.out3.temp $ARGV[0]/k4_input_C.out.out2.out3.temp $ARGV[0]/k5_input_N.out.out2.out3.temp $ARGV[0]/k5_input_M.out.out2.out3.temp $ARGV[0]/k5_input_C.out.out2.out3.temp |sed 's/,//g'>$ARGV[0]/hybrid_file";
