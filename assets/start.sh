#!/bin/bash

if [[ ! -f /config/noip2.conf ]]
  then
    /root/noip2 -c /config/noip2.conf -C
  else
    /root/noip2 -c /config/noip2.conf

    while true
    do
        sleep 3600
    done
fi
