#!/bin/bash
# Run python script to get measurement values from MightyOhm geiger counter and then output data including timestamp into geigercounter.csv.

# It's worth looking at Austrias current measured values from the radiation early warning system.
# https://www.bmk.gv.at/themen/klima_umwelt/strahlenschutz/fruehwarnsystem/messwerte.html
# https://sfws.lfrz.at/

CURRENTDATE=`date +"%Y-%m-%d %T"`
GEIGEROUTPUT=$(python3 geigercounter_readserial.py 2>&1 | awk -v OFS='' '$1=$1')

echo $CURRENTDATE,$GEIGEROUTPUT >> geigercounter.csv
