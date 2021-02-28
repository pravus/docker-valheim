# Valheim

... in a box.

## Building

```bash
docker build -t valheim:latest .
```

## Running

```bash
docker run \
  --name valheim \
  --rm \
  -it \
  -p 2456:2456/udp \
  -p 2457:2457/udp \
  -p 2458:2458/udp \
  -e VALHEIM_NAME="ServerName" \
  -e VALHEIM_WORLD="WorldName" \
  -e VALHEIM_PASSWORD="Password" \
  -v /path/to/worlds:/root/.config/unity3d/IronGate/Valheim/worlds \
  valheim:latest
```
