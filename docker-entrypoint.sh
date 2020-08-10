#!/bin/bash
set -e

# Start the SLE Provider
python3 /usr/local/sle-provider/examples/start_provider.py &
# Wait until it is running
sleep 2
# Start the middleware for SatNOGS
# python3 /usr/local/sle-provider/examples/start_gnuRadio_middleware.py &
python3 /usr/local/sle-provider/examples/start_SatNOGS_middleware.py

# To enable frame generation uncomment the following and '&' in line 8
# sleep 1
# python3 /usr/local/sle-provider/examples/udp_data_endpoint.py
# python3 /usr/local/sle-provider/examples/satnogs_data_endpoint.py
