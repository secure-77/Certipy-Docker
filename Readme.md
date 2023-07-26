# Docker Version of Certipy

Runs with Python 3.10.4

## Build

```bash
sudo docker build -t certipy:latest .
```

## Run

```bash
sudo docker run -it -v $(pwd):/tmp certipy:latest certipy find -u 'user' -p 'password' -dc-ip 10.10.208.229 -output /tmp/docker 
```