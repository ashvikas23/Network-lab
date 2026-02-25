#!/bin/bash

echo "Enter a line of text:"
read line

vowels=$(echo "$line" | grep -o -i "[aeiou]")

echo "Vowels in the text: $vowels"

count=$(echo "$vowels" | wc -l)
echo "Number of vowels = $count"
