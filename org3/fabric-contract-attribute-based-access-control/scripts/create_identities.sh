#! /bin/bash
#
# This script runs through a sample scenario of creating Launches, Payloads 
# It then takes a Payload and Launch through the process
#
echo "What is the IP address for the API server (default is localhost:3003)?"
read API_URL
API_URL=${API_URL:-localhost:3003}
#set -x
# base64 encoded string added for 'admin:adminpw' to authorization header
ADMIN_ENCODED=`echo -n 'admin:adminpw' | base64`

echo ""
#curl -X POST "${API_URL}/api/register-user" -H "authorization: Basic ${ADMIN_ENCODED}" -H "Content-Type: application/json" -d "{\"userid\":\"ABFarm\",\"password\":\"ABFarm\",\"usertype\":\"producer\",\"affiliation\":\"abfarm.sales\"}"
echo ""
#curl -X POST "${API_URL}/api/register-user" -H "authorization: Basic ${ADMIN_ENCODED}" -H "Content-Type: application/json" -d "{\"userid\":\"XXFarm\",\"password\":\"XXFarm\",\"usertype\":\"producer\",\"affiliation\":\"xxfarm.sales\"}"
echo ""
#curl -X POST "${API_URL}/api/register-user" -H "authorization: Basic ${ADMIN_ENCODED}" -H "Content-Type: application/json" -d "{\"userid\":\"ZZFarm\",\"password\":\"ZZFarm\",\"usertype\":\"producer\",\"affiliation\":\"zzfarm.sales\"}"
echo ""


# These shippers are only needed to complete the flow. # In the current implementation, the UI will query the local wallet to get list of available shippers
# In a production implementation, the retailers, shippers, producers, etc should be assets in the ledger so they are shared. 

echo ""
curl -X POST "${API_URL}/api/register-user" -H "authorization: Basic ${ADMIN_ENCODED}" -H "Content-Type: application/json" -d "{\"userid\":\"Fedex\",\"password\":\"Fedex\",\"usertype\":\"shipper\"}"
echo ""
echo ""
curl -X POST "${API_URL}/api/register-user" -H "authorization: Basic ${ADMIN_ENCODED}" -H "Content-Type: application/json" -d "{\"userid\":\"UPS\",\"password\":\"UPS\",\"usertype\":\"shipper\"}"
echo ""
