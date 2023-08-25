#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <extension> <new_name>"
    exit 1
fi

extension="$1"
new_name="$2"

counter=1

for file in *."$extension"; do
    new_filename="${new_name}${counter}.$extension"
    mv "$file" "$new_filename"
    ((counter++))
done
