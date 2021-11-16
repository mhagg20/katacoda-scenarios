# Öffnen des Containers

Um weitere Befehle für die InfluxDB zu nutzen, müssen Sie nun den Container öffnen. Dies wird mit diesem Befehl durchgeführt.

`docker exec -it influxdb bash`{{execute T1}}

Nun öffnet sich die bash Console des Docker-Containers und somit der InfluxDB. 

# Installieren des InfluxDB-Client

Für die Konfiguration und Nutzung der InfluxDB wird der InfluxDB-Client benötigt. Dieser wird folgendermaßen installiert.

`apt install influxdb-client`{{execute T1}}

`influx setup -b bucket -o org -u user -p passwort -f`{{execute T1}}

# Token erstellen und in Umgebungsvariable speichern