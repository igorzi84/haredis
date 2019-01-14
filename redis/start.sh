#!/bin/bash

if [[ $REDIS_ROLE == 'slave' ]]; then 
    redis-server /etc/redis.conf --slaveof redis-master 6379 &
elif [[ $REDIS_ROLE == 'master' ]]; then
    redis-server /etc/redis.conf &
fi

redis-sentinel /etc/sentinel.conf 