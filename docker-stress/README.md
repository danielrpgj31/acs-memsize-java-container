# Docker-stress

#### Usage

### Build
```
docker build -t pkar/dockstress .
```
### Run inside the container
### You can change value of memory and timeout
```
stress --cpu 2 --vm 1 --vm-bytes 256M --timeout 300s
```
