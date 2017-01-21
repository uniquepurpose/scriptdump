# scriptdump
This is a collection of scripts which I use in my environment. Used in a highly customized environment. Definitely needs you to do modifications. #worksforme

# grafana_export.sh
Export MySQL data historical data of voltages (battery, consumer, solar) and import it to InfluxDB for visualization in Grafana. Takes HOURS to import ~300k rows.

# grafana_airgrids.sh
Extracts the following information via SNMP from Ubiquiti AirGrids and NanoStations and inserts the data to InfluxDB for visualitaion in Grafana:
- Operating frequency
- Signal strength, dBm
- RSSI, dBm
- CCQ in %
- Noise floor
- TX rate
- RX rate

# grafana_geigercounter.sh
Reads CPM and uSievert values from MIghtyohm Geigercounter. Depends on grafana_geigercounter_readserial.py.
Needs python and python-serial packages installed.
