#!/bin/bash

# Script for formatting images with the name and coresponding label
FRUIT=$1
#initial value for counter (first image renamed will have i+1 index value)
i=0
for f in $(ls -v | grep .jpg)
do
	((i=i+1))

	rename "s/[0-9]+/$i/" $f
done

rename "s/([0-9]+)/$FRUIT (\1)/" *.jpg
