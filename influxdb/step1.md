# Anlegen der InfluxDB

Im ersten Schritt wird die InfluxDB erstellt und gestartet.

In diesem Szenario wird ein bereits existierendes Docker Image von Docker Hub genutzt. Dieses wir mit einem Klick auf das unten folgende Feld geladen:

`docker pull influxdb`{{execute}}

Nachdem das Image herutergeladen wurdelässt sich dieses und alle weitern Images auflisten:
`docker image ls`{{execute}}

Nun muss die InfluxDB / das Image gestartet werden. Hierbei werden zusätzliche Parameter benötigt.
Folgende Parameter müssen dabei zwingend gesetzt werden:
 - DOCKER_INFLUXDB_INIT_USERNAME
 - DOCKER_INFLUXDB_INIT_PASSWORD=PASSWORT
 - DOCKER_INFLUXDB_INIT_ORG=pro_org
 - DOCKER_INFLUXDB_INIT_BUCKET
Diese Daten werden zum Login in die Datenbank und zur Auswahl des richtigen Projektes benötigt.
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

Nachdem die InfluxDB gestartet wurde, wird der Docker Container unter folgendem Befehl gelistet:
`docker ps`{{execute}}

Zur Nutzung der InfluxDB muss zusätzlich der InfluxDB-Client installiert werden.
`apt install influxdb-client`{{execute}}