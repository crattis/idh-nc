#!/bin/bash

# Set date to be added at start of file when script is ran.
NOW='$(date +"%Y-%m-%d %H:%M:%S:z")'

# Port Array needs to be set up for the local environment. Get a list of workstations with open port, match highsest counts.
port_array=()

# For loop to run NC and put in the time stamps when script startd and on each event.
for port in ${port_array[@]}
do
echo "$NOW listner started" >> /var/log/honeypot/$port.log 2>&1 &
ncat -klvnp $port 2>&1 | ts '%Y-%m-%d %H:%M:%S%z | tee -a /var/log/honeypot/$port.log &
done
