Nachdem die InfluxDB nun gestartet ist, für die Nutzung bereit steht und ein User angelegt wurde, ist es nun möglich Daten in die InfluxDB zu schreiben und diese zu nutzen.

# Schreiben der Daten in die InfluxDB

In diesem Schritt werden Daten in die InfluxDB geschrieben. Die einzufügenden Daten wurden bereits in einem vorrangegangenen Schritt in den Docker Container kopiert und können nun aus der Textdatei heraus in die InfluxDB gelesen werden. Dies wird mittels folgendem Befehl durchgeführt.

`influx write -b bucket --format=lp -f dataset.txt`{{execute T1}}

# Abfragen der Daten

Nun ist die InfluxDB bereit und mit Daten gefüllt. Somit sind Abfragen möglich. Abfragen sind in der InfluxDB über die Abfragesprechen InfluxQL oder Flux möglich. In der folgenden Abfrage wird beispielhaft Flux verwendet. 

Abfragen in Flux sehen folgendermaßen aus:
 - Um die Abfrage für die InfluxDB in Docker ausführbar zu machen, läuft die Abfrage unter dem Befeht "influx query"
 - Die Query selbst beinhaltet den abgefragten Bucket und kann weitere Spezifikationen entahlten. In diesem Beispiel wird die Abfrage mittels "range" eingeschränkt, sodass nur die ersten 5 Datensätze angezeicht werden.

`influx query 'from(bucket: "bucket") |> range(start:1633039200) |> limit(n:5)'`{{execute T1}}