#!/bin/bash

# Function to generate a random number within a range
generate_random_number() {
    min=$1
    max=$2
    echo $((RANDOM % (((max - min)* 100 ) + 1) + min))
}

# Check if correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <min> <max>"
    exit 1
fi

# Extract min and max from arguments
min=$1
max=$2

# Validate input range
if [ "$min" -ge "$max" ]; then
    echo "Error: min must be less than max."
    exit 1
fi

# Loop through input numbers from min to max
for ((i = 0; i <= (max - 1); i++)); do
    # Generate a random number
    random_number=$(generate_random_number "$min" "$max")
    # Output the input number and its corresponding random number
   # echo "Input number: $i, Random number: $random_number"
    echo "$i, $random_number"
done

