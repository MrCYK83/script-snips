#!/bin/bash

counter=1

for file in *; do
    if [ -f "$file" ]; then
        extension="${file##*.}"
        new_name="G$counter.$extension"
        mv "$file" "$new_name"
	echo "Renamed '$file' to '$new_name'"
        ((counter++))
    fi
done

