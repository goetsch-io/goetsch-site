#!/bin/bash

# Default refresh rate (in seconds)
REFRESH_RATE=${1:-30}

echo "🔄 Build Monitor - Refreshing every $REFRESH_RATE seconds (Press Ctrl+C to stop)"
echo

while true; do
    clear
    echo "🔄 Build Monitor - Refreshing every $REFRESH_RATE seconds (Press Ctrl+C to stop)"
    echo "ℹ️ Last update: $(date)"
    echo
    
    # Run the status script
    ./build_status.sh
    
    echo
    echo "🕒 Next update in $REFRESH_RATE seconds..."
    sleep $REFRESH_RATE
done