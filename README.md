# SimpleServer

## Installation

### normal

```
mix deps.get
iex -S mix
```

### docker

run
```
docker build -t simple-server .
docker run -p 8085:8085 simple-server
```

stop
```
docker ps
docker stop CONTAINER_ID
```
