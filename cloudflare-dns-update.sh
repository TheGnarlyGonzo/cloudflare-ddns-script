#!/bin/sh

# Replace these variables with your own values
API_KEY="your_cloudflare_api_token"
ZONE_ID="your_zone_id"
RECORD_ID="your_record_id"
SUBDOMAIN="subdomain.yourrootdomain.com"

# Get your current public IP address
CURRENT_IP=$(curl -s http://ifconfig.me)
echo "Current IP: $CURRENT_IP"

# Update Cloudflare DNS record
curl -s -X PUT "https://api.cloudflare.com/client/v4/zones/$ZONE_ID/dns_records/$RECORD_ID" \
     -H "Authorization: Bearer $API_KEY" \
     -H "Content-Type: application/json" \
     --data "{\"type\":\"A\",\"name\":\"$SUBDOMAIN\",\"content\":\"$CURRENT_IP\",\"ttl\":1,\"proxied\":false}"
