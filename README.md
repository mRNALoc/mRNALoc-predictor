# mRNALoc-predictor
Find the mRNA locations

How to use mRNALoc?
********************

SVM INSTALLATION
-----------------

This tool is based on Support Vector Machine. If users already have SVM in their system, please change the path in mRNA_Loc.pl

or 

Here, we also provided the gzip file of SVM downloaded from http://download.joachims.org/svm_light/current/svm_light.tar.gz

For installation please follow these steps:-

(a) cd tool
(b) tar -xvzf svm_light.tar.gz 
(c) make       

RUN mRNALoc tool
----------------

This program run as a standalone at Linux and Mac system

Uses: perl mRNALoc.pl Input_fasta_file Threshold

#For example: perl mRNALoc.pl example.fasta 0.1

Advantage
---------
User can submit more than one mRNA sequences at a time

Caution
--------
mRNA sequences should be in FASTA format

Output
-------
The final result will be saved in mRNALoc_Result file
