# Kopieren eines Skriptes in den Container

`docker cp token.sh influxdb:/token.sh`{{execute T1}}

# Öffnen des Containers

Um weitere Befehle für die InfluxDB zu nutzen, müssen Sie nun den Container öffnen. Dies wird mit diesem Befehl durchgeführt.

`docker exec -it influxdb bash`{{execute T1}}

Nun öffnet sich die bash Console des Docker-Containers und somit der InfluxDB. 

# Anlegen der InfluxDB

`influx setup -b bucket -o org -u user -p passwort -f`{{execute T1}}

# Token erstellen und in Umgebungsvariable speichern mittels Skript

`source token.sh`{{execute T1}}

# Token ausgeben

`echo $INFLUX_TOKEN`{{execute T1}}