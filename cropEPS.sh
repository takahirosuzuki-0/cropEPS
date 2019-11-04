#!/bin/sh

if [ "$1" == "" ]
then
	echo "./cropEPS.sh all:	crop all eps files"
	echo "./cropEPS.sh [name]:	crop [name].eps"
elif [ "$1" == "all" ]
then
	for FILE in *eps
	do
	    IN=${FILE%.eps}
	    ps2pdf $IN.eps
	    pdfcrop $IN.pdf
	    pdf2ps $IN-crop.pdf $IN.eps
	    rm $IN.pdf
	    rm $IN-crop.pdf
	done
else
 	IN=$1
	ps2pdf $IN.eps
	pdfcrop $IN.pdf
	pdf2ps $IN-crop.pdf $IN.eps
	rm $IN.pdf
	rm $IN-crop.pdf
fi
