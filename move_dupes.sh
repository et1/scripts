#! /bin/bash

WORK_DIR=$1
COPY_NUM=$2
OUTPUT_DIR=$3 
re='^[0-9]+$'

USAGE="echo Usage: $0 <working directory> <copy number> <output directory>. All parameters must be entered"

# Check for both parameters
if [ $# != 3 ]; then
        echo -e "All parameters must be set"
        $USAGE
        exit 3
fi

# Check valid number given
if ! [[ $COPY_NUM =~ $re ]]; then
	echo "Error: Copy number is invalid" >&2; exit 1
fi

# Check for valid directories
if [ -d "$WORK_DIR" ] && [ -d "$OUTPUT_DIR" ]; then
	find $WORK_DIR -type f -name "*($COPY_NUM)*" -print0 | xargs -0 mv $OUTPUT_DIR
fi
