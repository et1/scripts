#! /bin/bash

WORK_DIR=$1
COPY_NUM=$2

find $WORK_DIR -type f -name "*($COPY_NUM)*" | sed -e "s|$WORK_DIR||" -e "s/($COPY_NUM)//" | sort > find_dupes_$COPY_NUM
