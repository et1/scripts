#!/bin/bash

INPUT=$1

sed -i 's/\%3A/:/g' "$INPUT"
sed -i 's/\%2F/\//g' "$INPUT"
sed -i 's/\%3F/\?/g' "$INPUT"
sed -i 's/\%3D/\=/g' "$INPUT"
sed -i 's/\%25/\%/g' "$INPUT"
sed -i 's/\%26/\&/g' "$INPUT"
