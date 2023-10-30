#!/bin/bash

# Set the number of requests and the URL
NUM_REQUESTS=1000
URL=http://localhost:8080

# Initialize variables
total_time=0
above_average=0

# Loop for the desired number of requests
for ((i=1; i<=NUM_REQUESTS; i++)); do
    # Use 'curl' to fetch the webpage and measure the time
    load_time=$(curl -s -o /dev/null -w "%{time_total}\n" $URL)
    total_time=$(awk "BEGIN {print $total_time + $load_time}")

    # Print the load time
    echo "Request $i - Load time: $load_time seconds"

    # Calculate the average load time
    average_time=$(awk "BEGIN {print $total_time / $i}")

    # Check if the current load time is above average
    if (( $(awk "BEGIN {print $load_time > $average_time}") )); then
        above_average=$((above_average + 1))
    fi

    # Sleep for 3 seconds
    sleep 3
done

# Print the summary
echo "Total requests: $NUM_REQUESTS"
echo "Total time: $total_time seconds"
echo "Average load time: $average_time seconds"
echo "Requests with load time above average: $above_average"
