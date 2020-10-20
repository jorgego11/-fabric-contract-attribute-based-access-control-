#! /bin/bash
#
# This script runs through a sample scenario of creating Launches, Payloads 
# It then takes a Payload and Launch through the process
#
echo "What is the IP address for the API server (default is localhost:3002)?"
read API_URL
API_URL=${API_URL:-localhost:3002}
# base64 encoded string 'userid:userpwd' added for authorization header

echo ""
echo ""
LAST_AUTH=`echo -n 'Fedex:Fedex' | base64`
curl -X POST "${API_URL}/api/enroll-user" -H "authorization: Basic ${LAST_AUTH}" -H "Content-Type: application/json" -d "{\"usertype\":\"shipper\"}"
echo ""
echo ""
LAST_AUTH=`echo -n 'UPS:UPS' | base64`
curl -X POST "${API_URL}/api/enroll-user" -H "authorization: Basic ${LAST_AUTH}" -H "Content-Type: application/json" -d "{\"usertype\":\"shipper\"}"
echo ""

