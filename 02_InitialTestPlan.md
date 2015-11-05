# Initial Test Plan

## 1. When do verification and validation start? When are they complete?

### Validation: Das ist richtige machen

* nur Wünsche von Studenten erfüllt, wenn komplette Studienordnung richtig abgedeckt ist
* Studienordnung ist eine externe Spezifikation, keine interne
* Anwendung unter der Annahme entwickelt, dass Planung der Belegung kompliziert ist, wenn man alle Regeln beachten muss
* Wenn alles geregelt wäre, bräuchte man die Anwendung nicht. Da es aber einen großen Spielraum und eine große Menge an gültigen Belegungen gibt,da jedes Semester neue Fächer mit eigenen Vertiefungsregeln dazu kommen (**TODO exemplar* ist eine Anwendung zur Unterstützung hilfreich.
* Start: PEM 
* End: 

### Verification: 
Das was gemacht wird, richtig gemacht wird -- Specification erfüllen

* Anwendung muss mit Studienordnung übereinstimmen (alle Regeln richtig abdecken)
* niemals komplett, da jedes Semester neue Fächer mit eigenen Vertiefungsregeln dazu kommen (**TODO exemplar**)
* Start: manuell zu Begin des Projektes


* Tests sollten eher sein, sind aber erst am Ende der Entwicklung
* permanente V&V notwenig, Grund für TestProjekt


## 2. What particular techniques should be applied during development?
* TDD
* static analysis --> bis jetzt gar nicht umgesetzt

* Randomisierte Tests bieten sich nicht an, Zuverlaessigkeit am besten ueber genau Tests.

Laut dem ursprünglichen Paper von D. Hamlet über Random Testing.
> The [..] meaning of "random testing" refers to an explicit lack of "system" in the choice of test data, so that there is no correlation among different tests.

In unserem Fall muessen die Testfaelle aber sehr genau auspezifiert sein, um bestimmte Grenzfaelle abzudecken.
Eine zufaellige Belegung wird nahezu immer falsch sein.


Tradeoff Kosten-Korrektheit: Bei uns ganz klar in Richtung Korrektheit. Korrektheit ist oberstes Gut, weil eine faelschlicherweise korrekte Belegung unschoene Folgen haben kann.

Macht die Anwendung unnnutzbar, wenn man sich nicht darauf verlassen kann.


## 3. How can we assess the readiness of a product?

Wir definieren Fertigkeit ("readiness") auf Basis von drei __:
* Korrektheit: alle Regeln der Studienordung korrekt implementiert und abgedeckt sind
* Vertraulichkeit: die Daten des Nutzers verbleiben immer auf dem lokalen Rechner und werden insbesondere nicht in einer Datenbank gespeichert
* Usability: Die Webseite sollte gut zu benutzen sein. Insbesondere muss zu jedem Zeitpunkt klar sein, was die aktuelle Belegung ist, und ob diese korrekt ist oder nicht.

Von den drei Fertigkeits-Kritieren ist die Usability am schwierigsten zu erfassen.

Vertraulichkeit **TODO**.

Die Korrektheit der Anwendung zeigen wir im **TODO** Teil. Dort ordnen wir den Paragraphen der Studienordnung die implementierten Programmregeln zu, und zeigen, dass jede Anforderung der Studienordnung erfuellt ist.

Desweiteren ist Verlaesslichkeit ("reliability") kein Problem, weil es sich um eine statische Webseite handelt, und damit keinerlei Ressourcen des Server ueber das Ausliefern der Daten hinaus benoetigt werden. Desweiteren kann sich der Nutzer die Anwendung auch lokal auf seinen Rechner herunterladen, und die Anwendung so nutzen.
Selbst wenn der Nutzer auf die Online-Anwendung vertraut und diese fuer eine kurze Zeit nicht erreichbar ist, stellt dies auch kein Problem dar, da eine Studien- und Belegungsplanung ueblicherweise ueber einen Zeitraum von mind. 3 Jahren erfolgt.



## 4. How can we control the quality of successive releases?
* jedes Semester neue Veranstaltungen müssen per Hand in das System übertragen werden --> sehr fehleranfällig
* TODO: wie macht man das richtig?


Veranstaltungspflege


Ein offensichtliches Problem stellt die Aenderung oder Neuverfassung der Studienordnung dar. In diesem Fall muss die Anwendung entweder behutsam angepasst werden, oder komplett neu entwickelt werden. Deswegen ist es wichtig, von einer Aenderung der Studienordnung so schnell wie moeglich zu erfahren. Es laesst sich dafuer aber keine gute technische Loesung implementieren. 
Da Aenderungen der Studienordnung aber oeffentlich angekuendigt werden muessen, und oft auch mit Diskussionen zwischen den Studierenden und Lehrenden einhergehen, verlassen wir uns auf schnelles Feedback des Fachschaftsrates oder der Studierendenschaft.

Technologien
Nutzt allerdings moderne Webtechnologien wie HTML5.
Deswegen ist in den naechsten Jahren keine Inkompatibiliaet oder Beendigung der Unterstuetzung durch Browser-Hersteller zu erwarten.



## 5.How can the development process itself be improved?

Wie bereits erwaehnt ist das Hauptproblem die Aktualisierung der Veranstaltungsdatenbank.

* Code Reviews (insebesondere von nachträglichen Änderungen)
* 2 unabhängige Änderungseingabe (neue Veranstaltung) --> erst dann in System

Vorher manuelles, fehleranfaelliges Testen. Durch die von uns zu entwickelnden Tests wird das manuelle Testen unnoetig.
Durch eine hohe Testabdeckung steigt desweiteren


## Klassifizierung nach verschiedenen Test-Kriterien

## Zusammenfassung

[Was wir jetzt wirklich testen werden]

* Mapping zwischen Regeln und Paragraphen, zeigen dass vollstaendig (Validation-Testing)
* Defekt-Testing: Hier werden wir ein Test-Skript entwickeln, dass die data.js, die schon mehrfach Syntax-Fehler enthielt, auf ebendiese ueberprueft
* Unit-Tests fuer jede Regel im Programm
* System-Tests mit kompletten, echten Belegungsplaenen
* Kleine User-Study mit folgenden Fragen:
** dfasdf
** dfasdf


**TODO** Development, Release- und Usertesting (wir haben nur das erste)
**TODO** Unit/Component, Integration, System Testing