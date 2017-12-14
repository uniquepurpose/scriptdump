#!/bin/bash
# Export MySQL database from solar panel of radio link ZB38 and import it to InfluxDB for Grafana.
# #worksforme

for i in `seq 1 299670`;
do

sqldate=$(mysql --user=(ethersexuser) --password=(ethersexpassword) --database=grafana -s --execute="select timestamp from ethersex ORDER BY timestamp DESC LIMIT 1;"|cut -f1)
sqlbatterie=$(mysql --user=(ethersexuser) --password=(ethersexpassword) --database=grafana -s --execute="select batterie from ethersex ORDER BY timestamp DESC LIMIT 1;"|cut -f1)
sqlverbraucher=$(mysql --user=(ethersexuser --password=(ethersexpassword) --database=grafana -s --execute="select verbraucher from ethersex ORDER BY timestamp DESC LIMIT 1;"|cut -f1)
sqlsolar=$(mysql --user=(ethersexuser) --password=(ethersexpassword) --database=grafana -s --execute="select solar from ethersex ORDER BY timestamp DESC LIMIT 1;"|cut -f1)

influxdate=$(date -d "$sqldate" +"%s")
curl --silent -i -XPOST "http://localhost:8086/write?db=grafana&precision=s" --data-binary "zb38station,volt=batterie value=$sqlbatterie $influxdate" > /dev/null
curl --silent -i -XPOST "http://localhost:8086/write?db=grafana&precision=s" --data-binary "zb38station,volt=verbraucher value=$sqlverbraucher $influxdate" > /dev/null
curl --silent -i -XPOST "http://localhost:8086/write?db=grafana&precision=s" --data-binary "zb38station,volt=solar value=$sqlsolar $influxdate" > /dev/null

mysql --user=(ethersexuser) --password=(ethersexpassword) --database=grafana -s --execute="delete from ethersex where timestamp = \"$sqldate\";"

echo $i

done