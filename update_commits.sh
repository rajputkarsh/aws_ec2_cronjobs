#!/bin/bash

# Get the directory of the current script
script_dir=$(dirname "$0")

# Generate an ISO 8601 timestamp
timestamp=$(date -Iseconds)

# Define the filename with the timestamp
filename="outputs/api_response_$timestamp.txt"

# Make the API call and save the result to the file in the script's directory
curl --location "https://utkarsh.app/api/update-commits" -o "$script_dir/$filename"
