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

# grafana_geigercounter.sh & grafana_geigercounter_readserial.py
Reads CPM and uSievert values from <a href="http://mightyohm.com/blog/products/geiger-counter/">Mightyohm Geigercounter</a>. Depends on grafana_geigercounter_readserial.py.
Needs python and python-serial packages installed.

# grafana_apc.sh
Reads data with apcaccess and sends it to InfluxDB.

# grafana_ds18b20.sh
Reasd DS18B20 temperature sensor, calculate correct degrees Celsius and send data to InfluxDB for Grafana. This is running on a Raspberry Pi.

# grafana_esp32_dht22
Arduino sketch for Sparkfun ESP32 Thing and an AM2302 temperature&humidity sensor. Connects to Wifi and sends an HTTP GET request with the measured data.