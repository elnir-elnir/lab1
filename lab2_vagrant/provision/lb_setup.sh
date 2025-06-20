#!/bin/bash

{
  echo
  echo 'frontend http_front'
  echo  'bind *:80'
  echo  'default_backend http_back'
  echo
  echo 'backend http_back'
  echo
  echo 'balance roundrobin'
  echo 'server webserver1 192.168.50.10:80 check inter 5000 rise 2 fall 3'
} >> /etc/haproxy/haproxy.cfg

sudo systemctl restart haproxy
