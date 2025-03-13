#!/bin/sh

CONFIG_FILE="/home/config"

# Check if the config file exists and is readable
if [ -f "$CONFIG_FILE" ]; then
    echo "Loading environment variables from $CONFIG_FILE"
    
    # Automatically export variables from the config file
    set -a  # Automatically export variables
    . "$CONFIG_FILE"
    set +a  # Stop automatically exporting variables
else
    echo "Config file not found: $CONFIG_FILE"
fi
