#!/usr/bin/perl

#RUN mRNALoc tool
######################################################################

#This program run as a standalone at Linux and Mac system

#Uses: perl mRNALoc.pl Input_fasta_file Threshold

#For example: perl mRNALoc.pl example.fasta 0.1
#####################################################################

$infut_file="$ARGV[0]";
$svm_thr="$ARGV[1]";
$ran= int(rand 10000);
$dir = "temp/mRNALoc$ran";
system "mkdir $dir";
system "chmod 777 $dir";

system "/usr/bin/tr -d '\r' <$ARGV[0]>$dir/input_fi.fasta"; #Remove meta-character
system"/usr/bin/perl Scripts/fasta.pl $dir/input_fi.fasta $dir |head -100>$dir/input.fasta";

system "grep -c '>' $dir/input.fasta >$dir/total_seq";

$total_seq=`head -1 $dir/total_seq`;
chomp($total_seq);

if($total_seq ne 0)
{
	    system"/usr/bin/perl Scripts/script1.pl $dir/input.fasta>$dir/input.list";
	    system"/usr/bin/perl Scripts/script2.pl $dir/input.fasta $dir/input.list $dir";
}
	    system"/bin/cat $dir/*_N.fasta >$dir/input_N.out";
	    system"/bin/cat $dir/*_M.fasta >$dir/input_M.out";
	    system"/bin/cat $dir/*_C.fasta >$dir/input_C.out";

	    system"PseKNC/pseknc.py -i $dir/input_N.out -o $dir/k2_input_N.out.out2 -x PseKNC/propNames_DNA_di.txt -k 2 -s -f svm>/dev/null";
	    system"PseKNC/pseknc.py -i $dir/input_M.out -o $dir/k2_input_M.out.out2 -x PseKNC/propNames_DNA_di.txt -k 2 -s -f svm>/dev/null";
	    system"PseKNC/pseknc.py -i $dir/input_C.out -o $dir/k2_input_C.out.out2 -x PseKNC/propNames_DNA_di.txt -k 2 -s -f svm>/dev/null";

	    system"PseKNC/pseknc.py -i $dir/input_N.out -o $dir/k3_input_N.out.out2 -x PseKNC/propNames_DNA_tri.txt -k 3 -s -f svm>/dev/null";
	    system"PseKNC/pseknc.py -i $dir/input_M.out -o $dir/k3_input_M.out.out2 -x PseKNC/propNames_DNA_tri.txt -k 3 -s -f svm>/dev/null";
	    system"PseKNC/pseknc.py -i $dir/input_C.out -o $dir/k3_input_C.out.out2 -x PseKNC/propNames_DNA_tri.txt -k 3 -s -f svm>/dev/null";

	    system"PseKNC/pseknc.py -i $dir/input_N.out -o $dir/k4_input_N.out.out2 -x PseKNC/propNames_DNA_tri.txt -k 4 -s -f svm>/dev/null";
	    system"PseKNC/pseknc.py -i $dir/input_M.out -o $dir/k4_input_M.out.out2 -x PseKNC/propNames_DNA_tri.txt -k 4 -s -f svm>/dev/null";
	    system"PseKNC/pseknc.py -i $dir/input_C.out -o $dir/k4_input_C.out.out2 -x PseKNC/propNames_DNA_tri.txt -k 4 -s -f svm>/dev/null";

	    system"PseKNC/pseknc.py -i $dir/input_N.out -o $dir/k5_input_N.out.out2 -x PseKNC/propNames_DNA_tri.txt -k 5 -s -f svm>/dev/null";
	    system"PseKNC/pseknc.py -i $dir/input_M.out -o $dir/k5_input_M.out.out2 -x PseKNC/propNames_DNA_tri.txt -k 5 -s -f svm>/dev/null";
	    system"PseKNC/pseknc.py -i $dir/input_C.out -o $dir/k5_input_C.out.out2 -x PseKNC/propNames_DNA_tri.txt -k 5 -s -f svm>/dev/null";

	    system"/usr/bin/perl Scripts/script3.pl $dir";
	    system"/usr/bin/perl Scripts/script4.pl $dir";

	system "tool/svm_classify $dir/hybrid_file Models/Endoplasmic_Reticulum_model $dir/svm_score_Endoplasmic_Reticulum >/dev/null";
	system "tool/svm_classify $dir/hybrid_file Models/Extracellular_region_model $dir/svm_score_Extracellular_region >/dev/null";
	system "tool/svm_classify $dir/hybrid_file Models/cytoplasm_model  $dir/svm_score_cytoplasm >/dev/null";
	system "tool/svm_classify $dir/hybrid_file Models/mitochondria_model  $dir/svm_score_mitochondria >/dev/null";
	system "tool/svm_classify $dir/hybrid_file Models/nucleus_model  $dir/svm_score_nucleus >/dev/null";


system "grep '>' $dir/input_C.out |/usr/bin/cut -d '_' -f1,2 |sed 's/>//g' >$dir/mRNA_id"; #Grep mRNA id
	system "/usr/bin/paste $dir/mRNA_id $dir/hybrid_file $dir/svm_score_Endoplasmic_Reticulum $dir/svm_score_Extracellular_region $dir/svm_score_cytoplasm $dir/svm_score_mitochondria $dir/svm_score_nucleus |/usr/bin/tr '\t' '#' >$dir/final";

system"/usr/bin/perl Scripts/script5.pl $dir $svm_thr>$dir/Result";

system"/usr/bin/perl Scripts/script6.pl $dir>>mRNALoc_Result";

system"rm -r temp/*";
