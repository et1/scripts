#! /bin/bash

WORK_DIR=$1
OUTPUT_DIR=$2 

USAGE="echo Usage: $0 <working directory> <output directory>. All parameters must be entered."

# Check for both parameters
if [ $# != 2 ]; then
        echo -e "All parameters must be set."
        $USAGE
        exit 3
fi

# Check for valid directories
if [ -d "$WORK_DIR" ] && [ -d "$OUTPUT_DIR" ]; then
	for i in 1 2 3 4 5 6
	do
		find $WORK_DIR -type f -iname "*($i)*" -print0 | xargs -0 -I '{}' /bin/mv "{}" $OUTPUT_DIR
	done
fi
