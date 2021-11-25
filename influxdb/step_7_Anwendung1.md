Nach der bislang ledilich theoretischen Betrachtung von Zeitreihendatenbanken und der InfluxDB beginnt nun die praktische Anwendung der InfluxDB innerhal dieses Katacoda-Szenarios.


# Docker Image aufsetzen

Um die Installation zu vereinfachen wird in diesem Szenario auf auf das Docker Image der InfluxDB gesetzt, welches von Docker Hub gezogen wird.
In dieser Übung wird das neuste Image verwendet.

`docker pull influxdb:latest`{{execute T1}}

Um die InfluxDB nutzen zu können, muss das geladene Image gestartet werden. Hierfür wird folgender Befehl genutzt.

`docker run -d --name influxdb -p 8086:8086 influxdb:latest`{{execute T1}}

Nun startet der Docker-Container. Sobald dieser bereit ist, kann mit der Konfiguration im nachsten Schritt begonnen werden.

Um zu überprüfen, ob der Container mit der InfluxDB bereit ist, kann folgender Befehl ausgeführt werden.

`docker ps`{{execute T1}}

Hier sollte nun ein Container mit dem Image 'influxdb:latest' und dem Namen 'influxdb' aufgeführt sein.