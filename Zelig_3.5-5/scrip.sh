#!/bin/sh

for Rnw in *.Rnw;
do
  BASENAME=`basename $Rnw .Rnw`
  R CMD Sweave $BASENAME
done;
