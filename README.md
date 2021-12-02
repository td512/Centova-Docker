# Centova on Docker

![Centova Bootstrap](https://raw.githubusercontent.com/td512/Centova-Docker/master/motd.png)

## About

This image set was originally developed for internal use, where we wanted to put Centova Cast in Docker.

## Usage

You'll need to set one environment variable at the bare minimum:

- LICENSE_KEY - this is your Centova Cast license key
- APT_MIRROR - this is the canonical hostname to your preferred mirror, e.g. nz.archive.ubuntu.com

## How do I know if Centova is running?

If the container is up and tailing logs, you're good to go

## How do I find the IP to proxy Centova?

Run `docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $CT` where `$CT` is the container ID or name

## TL;DR

For those who want a complete command they can substitute (and that's probably most of us):

```
docker run -e LICENSE_KEY=REPLACE_ME -e APT_MIRROR=nz.archive.ubuntu.com -d --name centova --restart=always td512/centova:latest
```
