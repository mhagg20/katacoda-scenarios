Solange der Docker-Container läuft, kann in dieser Konsole kein weiterer Befehl abgesendet werden. Um weitere Komandos schreiben zu können wird eine weitere Konsole benötigt. Diese wir nun gestartet.

`printf 'Starte neue Konsole\n'`{{execute T2}}


# Installieren des InfluxDB-Client

Für die Konfiguration und Nutzung der InfluxDB wird der InfluxDB-Client benötigt. Dieser wird folgendermaßen installiert.

`apt install influxdb-client`{{execute T2}}

`influx setup -b bucket -o org -u user -p passwort`{{execute T3}}






https://2886795272-8086-ollie02.environments.katacoda.com/