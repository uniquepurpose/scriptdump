#!/bin/bash
# get data from P63-ZB38-ZB40 radio link airgrids for grafana.


# ZB40-NSM2
ip=(ipaddress)
sender=ZB40-NSM2

ubntRadioFreq=$(snmpwalk -Ov -c public -v 1 $ip .1.3.6.1.4.1.41112.1.4.1.1.4 | cut -f2 -d" ")
ubntWlStatSignal=$(snmpwalk -Ov -c public -v 1 $ip .1.3.6.1.4.1.41112.1.4.5.1.5 | cut -f2 -d" ")
ubntWlStatRssi=$(snmpwalk -Ov -c public -v 1 $ip .1.3.6.1.4.1.41112.1.4.5.1.6 | cut -f2 -d" ")
ubntWlStatCcq=$(snmpwalk -Ov -c public -v 1 $ip .1.3.6.1.4.1.41112.1.4.5.1.7 | cut -f2 -d" ")
ubntWlStatNoiseFloor=$(snmpwalk -Ov -c public -v 1 $ip .1.3.6.1.4.1.41112.1.4.5.1.8 | cut -f2 -d" ")
ubntWlStatTxRate=$(snmpwalk -Ov -c public -v 1 $ip .1.3.6.1.4.1.41112.1.4.5.1.9 | cut -f2 -d" ")
ubntWlStatRxRate=$(snmpwalk -Ov -c public -v 1 $ip .1.3.6.1.4.1.41112.1.4.5.1.10 | cut -f2 -d" ")

curl --silent -i -XPOST "http://localhost:8086/write?db=airgrids" --data-binary "ubntRadioFreq,sender=$sender value=$ubntRadioFreq"
curl --silent -i -XPOST "http://localhost:8086/write?db=airgrids" --data-binary "ubntWlStatSignal,sender=$sender value=$ubntWlStatSignal"
curl --silent -i -XPOST "http://localhost:8086/write?db=airgrids" --data-binary "ubntWlStatRssi,sender=$sender value=$ubntWlStatRssi"
curl --silent -i -XPOST "http://localhost:8086/write?db=airgrids" --data-binary "ubntWlStatCcq,sender=$sender value=$ubntWlStatCcq"
curl --silent -i -XPOST "http://localhost:8086/write?db=airgrids" --data-binary "ubntWlStatNoiseFloor,sender=$sender value=$ubntWlStatNoiseFloor"
curl --silent -i -XPOST "http://localhost:8086/write?db=airgrids" --data-binary "ubntWlStatTxRate,sender=$sender value=$ubntWlStatTxRate"
curl --silent -i -XPOST "http://localhost:8086/write?db=airgrids" --data-binary "ubntWlStatRxRate,sender=$sender value=$ubntWlStatRxRate"


# ########################################
# ZB38-NSM2
ip=(ipaddress)
sender=ZB38-NSM2

ubntRadioFreq=$(snmpwalk -Ov -c public -v 1 $ip .1.3.6.1.4.1.41112.1.4.1.1.4 | cut -f2 -d" ")
ubntWlStatSignal=$(snmpwalk -Ov -c public -v 1 $ip .1.3.6.1.4.1.41112.1.4.5.1.5 | cut -f2 -d" ")
ubntWlStatRssi=$(snmpwalk -Ov -c public -v 1 $ip .1.3.6.1.4.1.41112.1.4.5.1.6 | cut -f2 -d" ")
ubntWlStatCcq=$(snmpwalk -Ov -c public -v 1 $ip .1.3.6.1.4.1.41112.1.4.5.1.7 | cut -f2 -d" ")
ubntWlStatNoiseFloor=$(snmpwalk -Ov -c public -v 1 $ip .1.3.6.1.4.1.41112.1.4.5.1.8 | cut -f2 -d" ")
ubntWlStatTxRate=$(snmpwalk -Ov -c public -v 1 $ip .1.3.6.1.4.1.41112.1.4.5.1.9 | cut -f2 -d" ")
ubntWlStatRxRate=$(snmpwalk -Ov -c public -v 1 $ip .1.3.6.1.4.1.41112.1.4.5.1.10 | cut -f2 -d" ")

curl --silent -i -XPOST "http://localhost:8086/write?db=airgrids" --data-binary "ubntRadioFreq,sender=$sender value=$ubntRadioFreq"
curl --silent -i -XPOST "http://localhost:8086/write?db=airgrids" --data-binary "ubntWlStatSignal,sender=$sender value=$ubntWlStatSignal"
curl --silent -i -XPOST "http://localhost:8086/write?db=airgrids" --data-binary "ubntWlStatRssi,sender=$sender value=$ubntWlStatRssi"
curl --silent -i -XPOST "http://localhost:8086/write?db=airgrids" --data-binary "ubntWlStatCcq,sender=$sender value=$ubntWlStatCcq"
curl --silent -i -XPOST "http://localhost:8086/write?db=airgrids" --data-binary "ubntWlStatNoiseFloor,sender=$sender value=$ubntWlStatNoiseFloor"
curl --silent -i -XPOST "http://localhost:8086/write?db=airgrids" --data-binary "ubntWlStatTxRate,sender=$sender value=$ubntWlStatTxRate"
curl --silent -i -XPOST "http://localhost:8086/write?db=airgrids" --data-binary "ubntWlStatRxRate,sender=$sender value=$ubntWlStatRxRate"

# ########################################

# ZB38-AG5
ip=(ipaddress)
sender=ZB38-AG5

ubntRadioFreq=$(snmpwalk -Ov -c public -v 1 $ip .1.3.6.1.4.1.41112.1.4.1.1.4 | cut -f2 -d" ")
ubntWlStatSignal=$(snmpwalk -Ov -c public -v 1 $ip .1.3.6.1.4.1.41112.1.4.5.1.5 | cut -f2 -d" ")
ubntWlStatRssi=$(snmpwalk -Ov -c public -v 1 $ip .1.3.6.1.4.1.41112.1.4.5.1.6 | cut -f2 -d" ")
ubntWlStatCcq=$(snmpwalk -Ov -c public -v 1 $ip .1.3.6.1.4.1.41112.1.4.5.1.7 | cut -f2 -d" ")
ubntWlStatNoiseFloor=$(snmpwalk -Ov -c public -v 1 $ip .1.3.6.1.4.1.41112.1.4.5.1.8 | cut -f2 -d" ")
ubntWlStatTxRate=$(snmpwalk -Ov -c public -v 1 $ip .1.3.6.1.4.1.41112.1.4.5.1.9 | cut -f2 -d" ")
ubntWlStatRxRate=$(snmpwalk -Ov -c public -v 1 $ip .1.3.6.1.4.1.41112.1.4.5.1.10 | cut -f2 -d" ")

curl --silent -i -XPOST "http://localhost:8086/write?db=airgrids" --data-binary "ubntRadioFreq,sender=$sender value=$ubntRadioFreq"
curl --silent -i -XPOST "http://localhost:8086/write?db=airgrids" --data-binary "ubntWlStatSignal,sender=$sender value=$ubntWlStatSignal"
curl --silent -i -XPOST "http://localhost:8086/write?db=airgrids" --data-binary "ubntWlStatRssi,sender=$sender value=$ubntWlStatRssi"
curl --silent -i -XPOST "http://localhost:8086/write?db=airgrids" --data-binary "ubntWlStatCcq,sender=$sender value=$ubntWlStatCcq"
curl --silent -i -XPOST "http://localhost:8086/write?db=airgrids" --data-binary "ubntWlStatNoiseFloor,sender=$sender value=$ubntWlStatNoiseFloor"
curl --silent -i -XPOST "http://localhost:8086/write?db=airgrids" --data-binary "ubntWlStatTxRate,sender=$sender value=$ubntWlStatTxRate"
curl --silent -i -XPOST "http://localhost:8086/write?db=airgrids" --data-binary "ubntWlStatRxRate,sender=$sender value=$ubntWlStatRxRate"

# ########################################

# P63-AG5
ip=(ipaddress)
sender=P63-AG5

ubntRadioFreq=$(snmpwalk -Ov -c public -v 1 $ip .1.3.6.1.4.1.41112.1.4.1.1.4 | cut -f2 -d" ")
ubntWlStatSignal=$(snmpwalk -Ov -c public -v 1 $ip .1.3.6.1.4.1.41112.1.4.5.1.5 | cut -f2 -d" ")
ubntWlStatRssi=$(snmpwalk -Ov -c public -v 1 $ip .1.3.6.1.4.1.41112.1.4.5.1.6 | cut -f2 -d" ")
ubntWlStatCcq=$(snmpwalk -Ov -c public -v 1 $ip .1.3.6.1.4.1.41112.1.4.5.1.7 | cut -f2 -d" ")
ubntWlStatNoiseFloor=$(snmpwalk -Ov -c public -v 1 $ip .1.3.6.1.4.1.41112.1.4.5.1.8 | cut -f2 -d" ")
ubntWlStatTxRate=$(snmpwalk -Ov -c public -v 1 $ip .1.3.6.1.4.1.41112.1.4.5.1.9 | cut -f2 -d" ")
ubntWlStatRxRate=$(snmpwalk -Ov -c public -v 1 $ip .1.3.6.1.4.1.41112.1.4.5.1.10 | cut -f2 -d" ")

curl --silent -i -XPOST "http://localhost:8086/write?db=airgrids" --data-binary "ubntRadioFreq,sender=$sender value=$ubntRadioFreq"
curl --silent -i -XPOST "http://localhost:8086/write?db=airgrids" --data-binary "ubntWlStatSignal,sender=$sender value=$ubntWlStatSignal"
curl --silent -i -XPOST "http://localhost:8086/write?db=airgrids" --data-binary "ubntWlStatRssi,sender=$sender value=$ubntWlStatRssi"
curl --silent -i -XPOST "http://localhost:8086/write?db=airgrids" --data-binary "ubntWlStatCcq,sender=$sender value=$ubntWlStatCcq"
curl --silent -i -XPOST "http://localhost:8086/write?db=airgrids" --data-binary "ubntWlStatNoiseFloor,sender=$sender value=$ubntWlStatNoiseFloor"
curl --silent -i -XPOST "http://localhost:8086/write?db=airgrids" --data-binary "ubntWlStatTxRate,sender=$sender value=$ubntWlStatTxRate"
curl --silent -i -XPOST "http://localhost:8086/write?db=airgrids" --data-binary "ubntWlStatRxRate,sender=$sender value=$ubntWlStatRxRate"