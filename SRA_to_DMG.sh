#!/bin/bash

#fofn-checker

INFILE=$1
OUTFILE=$2

for SRA in $(cat ${INFILE}); do

	DMG=`esearch -db sra -query ${SRA} | efetch -format runinfo | tr ',' '\n' | head -59 | tail -1`
	
	echo "${SRA},${DMG}" >> ${OUTFILE}
	
done

		