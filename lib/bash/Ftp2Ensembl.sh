#!/bin/bash

ericscriptfolder=$1
ensversion=$2
if [ $ensversion -eq 0 ]; then
   fasta_path="current_fasta/"
else 
   fasta_path="release-"$ensversion"/fasta/"
fi
mkdir -p $ericscriptfolder/lib/data/_resources/
