# Heading for Step 1

This is some text.

Here's a single line of runnable code:

`docker pull influxdb`{{execute}}

`docker ps`{{execute}}

`apt install influxdb-client`{{execute}}

```
docker run -p 8086:8086 \
      -v influxdb:/var/lib/influxdb \
      -v influxdb2:/var/lib/influxdb2 \
      -e DOCKER_INFLUXDB_INIT_MODE=upgrade \
      -e DOCKER_INFLUXDB_INIT_USERNAME=mhagg \
      -e DOCKER_INFLUXDB_INIT_PASSWORD=PASSWORT \
      -e DOCKER_INFLUXDB_INIT_ORG=pro_org \
      -e DOCKER_INFLUXDB_INIT_BUCKET=pro_bu \
      influxdb:1.0
```{{execute}}