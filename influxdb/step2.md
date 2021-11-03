# Docker Image starten

Im zweiten Schritt wird das Docker Image der InfluxDB gestartet.

Beim Starten werden folgende Parameter zum Login in die Datenbank und zur Auswahl des richtigen Projektes zwingend benötigt:
 - DOCKER_INFLUXDB_INIT_USERNAME
 - DOCKER_INFLUXDB_INIT_PASSWORD=PASSWORT
 - DOCKER_INFLUXDB_INIT_ORG=pro_org
 - DOCKER_INFLUXDB_INIT_BUCKET

```
docker run -p 8086:8086 \
      -v influxdb:/var/lib/influxdb \
      -v influxdb2:/var/lib/influxdb2 \
      -e DOCKER_INFLUXDB_INIT_MODE=upgrade \
      -e DOCKER_INFLUXDB_INIT_USERNAME=mhagg \
      -e DOCKER_INFLUXDB_INIT_PASSWORD=PASSWORT \
      -e DOCKER_INFLUXDB_INIT_ORG=pro_org \
      -e DOCKER_INFLUXDB_INIT_BUCKET=pro_bu \
      influxdb:latest
```{{execute}}

Nachdem die InfluxDB gestartet wurde, wird der Docker Container unter folgendem Befehl gelistet:
`docker ps`{{execute}}


Zur Nutzung der InfluxDB muss zusätzlich der InfluxDB-Client installiert werden.

`apt install influxdb-client`{{execute}}