#!/bin/bash

# IP or domain to dig
TARGET="www.example.com"
NUM_PROCESSES=5000	#adjust the value according to simulation configuration
TOTAL_REQUESTS=50000	#adjust the value according to simulation configuration

# Function to execute dig
dig_target() {
    for ((i=0; i<TOTAL_REQUESTS/NUM_PROCESSES; i++)); do
        dig $TARGET
    done
    date
    echo 'done'
}

date

for ((i=0; i<NUM_PROCESSES; i++)); do
    dig_target &
done

while true; do
true
done
