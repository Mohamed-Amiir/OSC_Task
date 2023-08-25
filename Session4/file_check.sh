#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <filename> <directory>"
    exit 1
fi

filename="$1"
directory="$2"

if [ -e "$directory/$filename" ]; then
    echo "File exists"
    echo "Contents of $filename:"
    cat "$directory/$filename"
else
    echo "File does not exist"
fi
