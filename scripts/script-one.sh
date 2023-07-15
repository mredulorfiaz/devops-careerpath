#!/bin/bash

# Sleep and Print Script (Loop)

echo "Script started."

# Loop 10 times
for ((i=1; i<=10; i++))
do
    sleep 5
    echo "Iteration $i: 5 seconds have passed. This is the message after sleeping."
done

echo "Script completed."
