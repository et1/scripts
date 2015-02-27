#!/bin/bash

if (test -e "$1")
then
  # First argument is input file
  INPUTFILE="$1"
else
  echo "Input file not valid."

  exit
fi

OUTPUTFILE="$2"

sed "s/ /\n/g; s/’/ZZZ/g; s/[[:punct:]]//g; s/ZZZ/’/g" $INPUTFILE | sort | uniq -ic > tmp

# Supposed to remove leading space but seems to delete lines
#sed '/^ *1/d' $OUTPUTFILE > tmp

sed -n '/[[:alpha:]]/p' tmp | grep -v -i -w -f functors | sort -b -g > $OUTPUTFILE
