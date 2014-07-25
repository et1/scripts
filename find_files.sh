#! /bin/bash

WORK_DIR=$1
SEARCH_STRING=$2
OUTPUT_DIR=$3 

USAGE="echo Usage: $0 <working directory> <copy number> <output directory>. All parameters must be entered"

# Check for both parameters
if [ $# != 3 ]; then
        echo -e "All parameters must be set"
        $USAGE
        exit 3
fi

# Check for valid directories
if [ -d "$WORK_DIR" ] && [ -d "$OUTPUT_DIR" ]; then
	find $WORK_DIR -type f -name "*$SEARCH_STRING*" | sed "s|$WORK_DIR||" | sort > $OUTPUT_DIR/find_files
fi
