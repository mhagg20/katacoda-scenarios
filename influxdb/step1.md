
# Docker Image aufsetzen

Im ersten Schritt wird ein bereits existierendes Docker Image der InfluxDB geladen.

Das Docker Image wird von Docker Hub heruntergeladen:
`docker pull influxdb:2.1.1`{{execute T1}}

`apt install influxdb-client`{{execute T1}}



https://2886795272-8086-ollie02.environments.katacoda.com/


# Docker Image starten

Im zweiten Schritt wird das Docker Image der InfluxDB gestartet.

Beim Starten werden folgende Parameter zum Login in die Datenbank und zur Auswahl des richtigen Projektes zwingend benötigt:
 - DOCKER_INFLUXDB_INIT_USERNAME
 - DOCKER_INFLUXDB_INIT_PASSWORD=PASSWORT
 - DOCKER_INFLUXDB_INIT_ORG=pro_org
 - DOCKER_INFLUXDB_INIT_BUCKET


`docker run -p 8086:8086 -v influxdb:/var/lib/influxdb influxdb:latest`{{execute T1}}

``{{execute T3}}

`influx setup -b bucket -o org -u user -p passwort`{{execute T3}}


grep "^Text" test.txt | head -n1