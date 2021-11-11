Was sind Zeitreihendatenbanken?

Wie bereits im vorangegangenen Abstract beschrieben, sind Zeitreihendatenbanken auf die Speicherung, Verwaltung und Analyse von Daten, welche regelmäßig neu anfallen, optimiert. Solche Daten fallen beispielsweise in den Bereichen Internet of Things oder bei Messwerten von Sensoren an.

Bei der Speicherung der Zeitreihendaten, bekommt jeder Datensatz einen Zeitstempel mitgespeichert. Insgesamt werden die Datensätze in Zeitreihendatenbanken typischerweise möglichst klein gehalten. Abgespeichert werden in der Regel nur der eigentliche (Mess-)Wert und der Zeitstempel. Je nach Anwendungsfall können noch der Erzeuger der Daten, z.B. welcher Sensor die Daten erzeugt hat, oder sonstige nötige Metadaten abgespeichert werden.

Im Hier beigefügten Bild ist ein Ausschnitt aus einem möglichen Datensatz einer Zeitreihendatenbanken dargestellt. Dabei ist zu sehen, dass die Datensätze lediglich aus dem Sensor, welcher die Daten erzeugt hat, dem ermittelten Wert und dem Zeitstempel besteht.

# Bild Zeitreihendatenbank_Ausschnitt.png einfügen

![Zeitreihendatenbank](influxdb\assets\Zeitreihendatenbank_Ausschnitt.png)