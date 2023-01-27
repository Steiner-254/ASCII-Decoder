#!/bin/bash

# Decode ASCII to string

encoded_string="your encoded string here"

# Use printf to convert ASCII to string
IFS=' ' read -ra ADDR <<< "$encoded_string"
string=""
for i in "${ADDR[@]}"; do
    string+=$(printf \\$(printf '%03o' "$i"))
done

# Print the decoded string
echo $string
