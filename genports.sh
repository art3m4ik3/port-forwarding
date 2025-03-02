#!/bin/bash

SOURCE_IP="0.0.0.0" # Listening all ips. Don't change it if you don't know what you're doing
DESTINATION_IP="1.1.1.1" # Destination IP

START_PORT=25565
END_PORT=25999

CONFIG_FILE="/etc/rinetd.conf" # Path to configuration file

for ((port=$START_PORT; port<=$END_PORT; port++)); do
    echo "$SOURCE_IP $port $DESTINATION_IP $port" >> $CONFIG_FILE
done

echo "Configuration rinetd with ports from $START_PORT to $END_PORT added to $CONFIG_FILE."
