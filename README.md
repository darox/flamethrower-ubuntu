# Flamethrower-ubuntu

This Dockerfile packs the [Flamethrower](https://github.com/DNS-OARC/flamethrower) tool into a Ubuntu 22.04 OCI image. The reason for this is that we faced DNS resolution issues when running with the debian:bullseye base image on Kubernets.