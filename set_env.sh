#!/bin/bash
# Load environment variables from /home/config if the file exists
if [ -f /home/config ]; then
    echo "Loading environment variables from /home/config"
    export $(grep -v '^#' /home/config | xargs)
fi
