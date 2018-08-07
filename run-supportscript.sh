#/bin/bash
# Script to download newest NXT support script, execute it and rename output file to include date and hostname.
rm info_support.sh
wget https://support.nexthink.com/hc/en-us/article_attachments/360001648105/info_support.sh
chmod +x info_support.sh
sudo ./info_support.sh
d=$(date +%Y-%m-%d)
mv info_nxt_support.tgz $d-$HOSTNAME.tgz
