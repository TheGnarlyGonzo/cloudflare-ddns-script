# cloudflare-ddns-script
Leverage Cloudflare as your DNS provider and take advantage of their API to update your dynamic IP address

Step #1 - Create your clourflare api token

Step #2 - Input your token into the zone-id-pull.sh script and run it to get your zone id

Step #3 - Input your zone id into the record-id-pull.sh script and run it to get your record id

Step #4 - Input your zone & record id into the cloudflare-dns-update.sh script and voila, your done apart from using cron to automate it if you'd like

Step #5 - 

Open your terminal and type crontab -e to edit your user's cron table.
Add the following line to schedule the script to run every hour:

0 * * * * /path/to/your/cloudflare_update_script.sh
