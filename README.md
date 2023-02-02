# copycat
Ein Dockertool um lokale Codeänderungen in eine Laufende Applikation in einem Container zu commiten, ohne den App Container neu zu bauen.


Ziel ist, in eine App (bsp. einen Node JS Server), welche in einem Container Läuft, den Code in einem Volume zu speichern.
Dabei soll das Image nicht verändert werden, solange keine Versionsänderung stattfindet.
Weiterhin soll eine Brücke geschaffen werden, durch die Code von außen bzw. der Entwicklung in das Volume überführt wird, sodass die App nur durch einen Neustart die Codeänderungen übernimmt.

Der Ansatz war, durch einen zweiten Container das Volume und einen lokalen Ordner zu mounten und über den die Änderungen zu kopieren und danach den Container zu beenden.

Als Sicherheitsaspekt soll die Applikation keinen direkten Mount zum Muttersystem haben.
