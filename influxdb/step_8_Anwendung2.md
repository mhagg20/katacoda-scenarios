# Kopieren eines Skriptes in den Container

Im weiteren Verlauf dieses Katacoda wird es nötig, dass aus einer Abfrage ein Token extrahiert wird. Diese Funktionalität ist nicht Teil des Katacoda und wurde in ein Bash-Script ausgelagert. Dieses muss vor der Nutzung in den Docker-Container kopiert werden.

`docker cp token.sh influxdb:/token_erstellung.sh`{{execute T1}}

Zudem werden die Datensätze in diesem Szenario aus einer Textdatei in die InfluxDB eingespielt. Die entsprechende Datei muss ebenfalls in den Docker Container der InfluxDB kopiert werden.

`docker cp dataset.txt influxdb:/dataset.txt`{{execute T1}}

# Öffnen des Containers

Um weitere Befehle für die InfluxDB zu nutzen, müssen Sie nun den Container öffnen. Dies wird mit diesem Befehl durchgeführt.

`docker exec -it influxdb bash`{{execute T1}}

Nun öffnet sich die bash Console des Docker-Containers und somit der InfluxDB. 

# Anlegen der InfluxDB

Nachdem die InfluxDB im Docker Container gestartet ist, muss für die Nutzung noch die entsprechende Datenbank angelegt werden. Dafür müssen die folgenden Angaben gemacht werden, welche zuvor bereits erklärt wurden.

Beim Erstellen der InfluxDB wird jeweils ein Name für den Bucket, die Organisation und den User benötigt. Des Weiteren wird ein Passwort für den User festgelegt.

In diesem Szenario wird einfachheitshalber auf sprechende Werte gesetzt, welche in der Praxis jedoch nicht empfehlenswert sind. 

`influx setup -b bucket -o org -u user -p password -f`{{execute T1}}

# Token erstellen und in Umgebungsvariable speichern mittels Skript

Um An- und Abfragen an die InfluxDB stellen zu können, wird ein Token benötigt. Dieser Token kann nach der generierung bei jeder einzelnen Abfrage mit übergeben werden oder er wird in der Variable "INFLUX_TOKEN" gespeichert. 

Die Tokengenerierung und Speicherung ist für die Darstellung in diesem Katacoda in einem Skript zusammengefasst, welches mittels folgendem Befehl ausgefügrt wird. Innerhalb des Skriptes wird der Token bei der InfluxDB angefordert, aus der zurückerhaltenen Antwort extrahiert und in die "INFLUX_TOKEN"-Variable gespeichert.

`source token_erstellung.sh`{{execute T1}}

# Token ausgeben

Wenn der Token vollständig generiert und korrekt gespeichert wurde, kann er unter folgendem Befehl angezeigt werden.

`echo $INFLUX_TOKEN`{{execute T1}}