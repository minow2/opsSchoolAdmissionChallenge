#!/bin/bash
#add fix to exercise2 here
grep -v www.ascii-art.de /etc/hosts > /tmp/hosts_new
sudo mv /tmp/hosts_new /etc/hosts