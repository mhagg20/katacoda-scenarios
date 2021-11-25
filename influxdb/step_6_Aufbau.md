Aufbau der InfluxDB:

Wie bereits beschrieben setzen Zeitreihendatenbanken auf ein schmales Design und unterscheiden sich in ihrem Aufbau von relationalen Datenbanken. Die InfluxDB besteht aus einer Organisation und Buckets. Im Folgenden werden die eben aufgeführten Begriffe erläutert.

- Organisation:
Eine Organisation stellt einen Arbeitsbereich dar, in dem mehrere Buckets und User hinterlegt werden können.

- Bucket:
Der Bucket ist der Ort, in dem die Zeitreihendaten gespeichert werden. Beim Erstellen von Buckets kann eine Aufbewahrungszeit festgelegt werden. Datensätze, die älter als diese Aufbewahrungszeit sind, werden automatisch gelöscht.

Die Datensätze selbst werden als einzelne Messung beschrieben. Eine Messung wird als eine Spalte der "Buckettabelle" angelegt.
Jeder Datensatz besteht weiter aus Feldern, Serien und den Zeitstempeln.