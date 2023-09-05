#!/bin/bash
#add fix to exercise4-server2 here
cp /etc/hosts /tmp/hosts_new
echo '192.168.60.10 server1' >> /tmp/hosts_new
sudo cp /tmp/hosts_new /etc/hosts