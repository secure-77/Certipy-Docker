# Docker Version of Certipy

Runs with Python 3.10.4

## Build

```bash
sudo docker build -t certipy:latest .
```

## Run

```bash
sudo docker run -it -v $(pwd):/tmp certipy:latest certipy find -u 'user' -p 'password' -dc-ip 10.10.208.229
```

## Pass Hostname to Container

```bash
sudo docker run -it -v $(pwd):/tmp --add-host=DC:10.10.90.78 certipy:latest certipy req -u 'user@domain.loc' -p "Password" -dc-ip 10.10.90.78 -target 'DC' -ca 'domain-DC-CA' -template 'RetroClients' -upn 'Administrator@domain.loc' -key-size 4096
```

## Use LDAPS and LDAP Channel Binding

```bash
sudo docker run -it -v $(pwd):/tmp certipy:latest certipy find -u 'user' -p 'password' -scheme ldaps -ldap-channel-binding
```
