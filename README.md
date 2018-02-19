# Ansible Client

## Supported tags and respective `Dockerfile` links
* `2.4.3.0`, `latest`    [(2.4.3.0/Dockerfile)]()

## Overview
This container provides the Ansible client.

## Build
```
docker build -t sockmal/ansible:VERSION .
```

## Run
```
docker run --rm sockmal/kubectl:VERSION --server=http://<server-name>:8080 get pods
```