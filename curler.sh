#!/bin/bash

read -p "Enter the URL: " url

echo "Sending cURL requests for each HTTP method to $url"
echo "==================================="

# HTTP GET request
echo "GET request:"
response=$(curl -s -o /dev/null -w "%{http_code}" -X GET "$url")
curl -X GET "$url"
echo "Status code: $response"
echo "==================================="

# HTTP POST request
echo "POST request:"
response=$(curl -s -o /dev/null -w "%{http_code}" -X POST "$url")
curl -X POST "$url"
echo "Status code: $response"
echo "==================================="

# HTTP PUT request
echo "PUT request:"
response=$(curl -s -o /dev/null -w "%{http_code}" -X PUT "$url")
curl -X PUT "$url"
echo "Status code: $response"
echo "==================================="

# HTTP DELETE request
echo "DELETE request:"
response=$(curl -s -o /dev/null -w "%{http_code}" -X DELETE "$url")
curl -X DELETE "$url"
echo "Status code: $response"
echo "==================================="

# HTTP HEAD request
echo "HEAD request:"
response=$(curl -s -o /dev/null -w "%{http_code}" -X HEAD "$url")
curl -X HEAD "$url"
echo "Status code: $response"
echo "==================================="

# HTTP OPTIONS request
echo "OPTIONS request:"
response=$(curl -s -o /dev/null -w "%{http_code}" -X OPTIONS "$url")
curl -X OPTIONS "$url"
echo "Status code: $response"
echo "==================================="

# HTTP PATCH request
echo "PATCH request:"
response=$(curl -s -o /dev/null -w "%{http_code}" -X PATCH "$url")
curl -X PATCH "$url"
echo "Status code: $response"
echo "==================================="
