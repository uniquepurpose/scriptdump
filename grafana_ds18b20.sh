#!/bin/bash
# read DS18B20 temperature sensor, calculate correct degrees Celsius and send data to InfluxDB for Grafana.
# please adapt [sensor_serial] and [IP of InfluxDB]

ds18b20temp="$(cat /sys/bus/w1/devices/[sensor_serial]/w1_slave | awk 'NR==2' | awk '{print $10}' | tr -d 't=')"

# Set decimal place
temp_draussen="$(echo scale=3\;$ds18b20temp/1000 | bc)"

curl --silent -i -XPOST "http://[IP of InfluxDB]:8086/write?db=grafana&precision=s" --data-binary "heizung,messpunkt=temp_aussen value=$temp_draussen"