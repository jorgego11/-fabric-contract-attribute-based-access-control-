#! /bin/bash
#
# This script runs through a sample scenario of creating Launches, Payloads 
# It then takes a Payload and Launch through the process
#
echo "What is the IP address for the API server (default is localhost:3003)?"
read API_URL
API_URL=${API_URL:-localhost:3003}
# base64 encoded string 'userid:userpwd' added for authorization header


#LAST_AUTH=`echo -n 'ABFarm:ABFarm' | base64`
#curl -X POST "${API_URL}/api/enroll-user" -H "authorization: Basic ${LAST_AUTH}" -H "Content-Type: application/json" -d "{\"usertype\":\"producer\"}"
echo ""

#LAST_AUTH=`echo -n 'XXFarm:XXFarm' | base64`
#curl -X POST "${API_URL}/api/enroll-user" -H "authorization: Basic ${LAST_AUTH}" -H "Content-Type: application/json" -d "{\"usertype\":\"producer\"}"
echo ""

#LAST_AUTH=`echo -n 'ZZFarm:ZZFarm' | base64`
#curl -X POST "${API_URL}/api/enroll-user" -H "authorization: Basic ${LAST_AUTH}" -H "Content-Type: application/json" -d "{\"usertype\":\"producer\"}"
#echo ""


# These shippers are only needed to complete the flow. # In the current implementation, the UI will query the local wallet to get list of available shippers
# In a production implementation, the retailers, shippers, producers, etc should be assets in the ledger so they are shared.

echo ""
LAST_AUTH=`echo -n 'Fedex:Fedex' | base64`
curl -X POST "${API_URL}/api/enroll-user" -H "authorization: Basic ${LAST_AUTH}" -H "Content-Type: application/json" -d "{\"usertype\":\"shipper\"}"
echo ""
LAST_AUTH=`echo -n 'UPS:UPS' | base64`
curl -X POST "${API_URL}/api/enroll-user" -H "authorization: Basic ${LAST_AUTH}" -H "Content-Type: application/json" -d "{\"usertype\":\"shipper\"}"
echo ""