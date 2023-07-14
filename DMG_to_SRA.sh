#!/bin/bash

#fofn-checker

INFILE=$1
OUTFILE=$2

for DMG in $(cat ${INFILE}); do

	SRA=`esearch -db sra -query ${DMG} | efetch -format runinfo | tr ',' '\n' | head -48 | tail -1`
	
	echo "${DMG},${SRA}" >> ${OUTFILE}
	
done

		