# Flamethrower-ubuntu

This Dockerfile packs the [Flamethrower](https://github.com/DNS-OARC/flamethrower) tool into a Ubuntu 22.04 OCI image. This is because we faced DNS resolution issues when running with the debian:bullseye base image on Kubernets.


## How to run 

```
docker run dariomader/flamethrower-ubuntu:0ffd42a5101189bfc8ebd3dac64f536e65dc531b 1.1.1.1 -Q 1 -r google.ch
```
