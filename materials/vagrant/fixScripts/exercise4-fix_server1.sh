#!/bin/bash
#add fix to exercise4-server1 here
cp /etc/hosts /tmp/hosts_new
echo '192.168.60.11 server2' >> /tmp/hosts_new
sudo cp /tmp/hosts_new /etc/hosts