#!/bin/bash

read -p "Enter the URL: " url

echo "Sending cURL requests for each HTTP method to $url"
echo "==================================="

# Function to perform HTTP request and display results
perform_request() {
    local method=$1
    echo "$method request:"
    response=$(curl -s -o /dev/null -w "%{http_code}" -X "$method" "$url")
    body=$(curl -s -X "$method" "$url")
    echo "Response Body:"
    echo "$body"
    echo "Status code: $response"
    if [ -n "$body" ]; then
        echo "JSON format:"
        echo "$body" | jq '.'
    fi
    echo "==================================="
}

# Ensure jq is installed
if ! command -v jq &> /dev/null
then
    echo "jq could not be found, please install jq to process JSON"
    exit 1
fi

# HTTP GET request
perform_request GET

# HTTP POST request
perform_request POST

# HTTP PUT request
perform_request PUT

# HTTP DELETE request
perform_request DELETE

# HTTP HEAD request
perform_request HEAD

# HTTP OPTIONS request
perform_request OPTIONS

# HTTP PATCH request
perform_request PATCH
