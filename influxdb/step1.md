# Docker Image laden

Im ersten Schritt wird ein bereits existierendes Docker Image der InfluxDB geladen.

Das Docker Image wird von Docker Hub heruntergeladen:
`docker pull influxdb:latest`{{execute T1}}

Nachdem das Image herutergeladen wurdelässt sich dieses und alle weitern Images auflisten:
`docker image ls`{{execute T2}}

`apt install influxdb-client`{{execute}}

https://2886795272-8086-ollie02.environments.katacoda.com/