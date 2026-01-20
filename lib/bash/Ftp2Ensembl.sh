#!/bin/bash

ericscriptfolder=$1
ensversion=$2
if [ $ensversion -eq 0 ]; then
   fasta_path="current_fasta/"
else 
   fasta_path="release-"$ensversion"/fasta/"
fi
mkdir -p $ericscriptfolder/lib/data/_resources/

lftp -c "open ftp.ensembl.org; cd pub/; ls -1 > $ericscriptfolder/lib/data/_resources/.ftplist0"
lftp -c "open ftp.ensembl.org; cd pub/${fasta_path}; ls -1R > $ericscriptfolder/lib/data/_resources/.ftplist1"

