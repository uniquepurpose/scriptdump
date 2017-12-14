#!/bin/bash
# read Geigercounter (http://mightyohm.com/blog/products/geiger-counter/) output from serial and send data to InfluxDB for Grafana.
# please adapt [IP of InfluxDB]

geigerOUT="$(python /home/pi/grafana_geigercounter_readserial.py)"
geigerCPM="$(echo $geigerOUT | awk '{print $4}' | tr -d ',')"
geigeruSv="$(echo $geigerOUT | awk '{print $6}' | tr -d ',')"

#echo $geigerCPM $geigeruSv >> /home/pi/geigeroutput.txt

curl --silent -i -XPOST "http://[IP of InfluxDB]:8086/write?db=grafana&precision=s" --data-binary "geigercounter,location=8045stall,measurement=cpm value=$geigerCPM"
curl --silent -i -XPOST "http://[IP of InfluxDB]:8086/write?db=grafana&precision=s" --data-binary "geigercounter,location=8045stall,measurement=uSv value=$geigeruSv"