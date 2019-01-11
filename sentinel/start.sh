#!/bin/bash

redis-sentinel /etc/sentinel.conf &
if [[ $REDIS_ROLE == 'slave' ]]; then 
    redis-server --slaveof redis-master 6379
else
    redis-server
fi
    