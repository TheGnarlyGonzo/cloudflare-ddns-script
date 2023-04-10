# Replace these variables with your own values
API_KEY="your_cloudflare_api_token"
DOMAIN="yourrootdomain.com"

# Get the zone ID
curl -s -X GET "https://api.cloudflare.com/client/v4/zones?name=$DOMAIN" \
     -H "Authorization: Bearer $API_KEY" \
     -H "Content-Type: application/json" | jq -r '.result[0].id'
