#!/bin/bash

read -p "Enter the URL: " url

echo "Sending cURL requests for each HTTP method to $url"

# HTTP GET request
echo "GET request:"
curl -X GET "$url"
echo ""

# HTTP POST request
echo "POST request:"
curl -X POST "$url"
echo ""

# HTTP PUT request
echo "PUT request:"
curl -X PUT "$url"
echo ""

# HTTP DELETE request
echo "DELETE request:"
curl -X DELETE "$url"
echo ""

# HTTP HEAD request
echo "HEAD request:"
curl -X HEAD "$url"
echo ""

# HTTP OPTIONS request
echo "OPTIONS request:"
curl -X OPTIONS "$url"
echo ""

# HTTP PATCH request
echo "PATCH request:"
curl -X PATCH "$url"
echo ""
