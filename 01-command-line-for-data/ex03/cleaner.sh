#!/bin/sh

head -n 1 ../ex02/hh_sorted.csv > hh_positions.csv

tail -n +2 ../ex02/hh_sorted.csv | while IFS= read -r line; do
    name=$(echo "$line" | awk -F',' '{
        if (NF > 5) {
            result = $3
            for(i=4; i<NF-1; i++) {
                result = result "," $i
            }
            print result
        } else {
            print $3
        }
    }' | tr -d '"')
    
    if echo "$name" | grep -q "Junior"; then
        level="Junior"
    elif echo "$name" | grep -q "Middle"; then
        level="Middle" 
    elif echo "$name" | grep -q "Senior"; then
        level="Senior"
    else
        level="-"
    fi
    
    id=$(echo "$line" | cut -d',' -f1)
    created_at=$(echo "$line" | cut -d',' -f2)
    has_test=$(echo "$line" | awk -F',' '{print $(NF-1)}')
    url=$(echo "$line" | awk -F',' '{print $NF}')
    
    echo "$id,$created_at,\"$level\",$has_test,$url" >> hh_positions.csv
done