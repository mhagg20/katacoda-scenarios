Nach der bislang ledilich theoretischen Betrachtung von Zeitreihendatenbanken und der InfluxDB beginnt nun die praktische Anwendung der InfluxDB innerhal dieses Katacoda-Szenarios.


# Docker Image aufsetzen

Um die Installation zu vereinfachen wird in diesem Szenario auf ein Docker gesetzt, welcher von Docker Hub gezogen wird.
In dieser Übung wird das neuste Image verwendet.

`docker pull influxdb:latest`{{execute T1}}

Um die InfluxDB nutzen zu können, muss das geladene Image gestartet werden. Hierfür wird folgender Befehl genutzt.

`docker run -d --name influxdb -p 8086:8086 -e INFLUXDB_ADMIN_USER=admin -e INFLUXDB_ADMIN_PASSWORD=admin123 -v influxdbdata:/var/lib/influxdb influxdb:latest`{{execute T1}}

Nun startet der Docker-Container. Sobald dieser bereit ist, kann mit der Konfiguration im nachsten Schritt begonnen werden.

Um zu überprüfen, ob der Container mit der InfluxDB bereit ist, kann folgender Befehl ausgeführt werden.

`docker ps`{{execute T1}}

Hier sollte nun ein Container mit dem Image influxdb:latest und dem Namen influxdb aufgeführt sein.