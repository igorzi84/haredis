# HA Redis server
High availability redis server for development purpose

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
```
or
```
redis-cli -h <docker host> -p 6379
```
