# HA Redis server
High availability redis server for development purpose

Master/slave configuration with Sentinel and HAProxy for single enpoint.
In case of master redis failure, sentinel will failover to slave redis and HAProxy will maintain same endpoint.
### Prerequisites
Requires docker

### Installing

1. git clone

2. Run docker-compose

```
docker-compose up --build
```
### Testing

```
telnet <docker host> 6379
info
```
or
```
redis-cli -h <docker host> -p 6379 info
```
