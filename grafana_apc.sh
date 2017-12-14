#!/bin/bash
# Reads data with apcaccess and sends it to InfluxDB
# Needs to be run as root!

# Get status
#apcstatus="$(/sbin/apcaccess | grep STATUS | awk '{ printf $3; }')"
#echo $apcstatus
#curl --silent -i -XPOST "http://[IP of InfluxDB]:8086/write?db=grafana_dev&precision=s" --data-binary "apc,location=zb40stall,measurement=status value=$apcstatus"

# Get line voltage
apclinev="$(/sbin/apcaccess | grep LINEV | tr -s ' ' | cut -d' ' -f3)"
echo $apclinev
curl --silent -i -XPOST "http://[IP of InfluxDB]:8086/write?db=grafana_dev&precision=s" --data-binary "apc,location=zb40stall,measurement=linevoltage value=$apclinev"

# Get load in percent
apcloadpct="$(/sbin/apcaccess | grep LOADPCT | awk '{ printf $3; }')"
echo $apcloadpct
curl --silent -i -XPOST "http://[IP of InfluxDB]:8086/write?db=grafana_dev&precision=s" --data-binary "apc,location=zb40stall,measurement=loadpct value=$apcloadpct"

# Get battery charge in percent
apcbcharge="$(/sbin/apcaccess | grep BCHARGE | awk '{ printf $3; }')"
echo $apcbcharge
curl --silent -i -XPOST "http://[IP of InfluxDB]:8086/write?db=grafana_dev&precision=s" --data-binary "apc,location=zb40stall,measurement=batterycharge value=$apcbcharge"

# Get battery voltage
apcbattv="$(/sbin/apcaccess | grep ^BATTV | awk '{ printf $3; }')"
echo $apcbattv
curl --silent -i -XPOST "http://[IP of InfluxDB]:8086/write?db=grafana_dev&precision=s" --data-binary "apc,location=zb40stall,measurement=batteryvoltage value=$apcbattv"