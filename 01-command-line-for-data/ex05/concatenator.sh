#!/bin/sh

output="hh_positions_concatenated.csv"
first=1

rm -f "$output"

for file in $(ls *.csv | sort); do
    if [ "$first" -eq 1 ]; then
        cat "$file" > "$output"
        first=0
    else
        tail -n +2 "$file" >> "$output"
    fi
done