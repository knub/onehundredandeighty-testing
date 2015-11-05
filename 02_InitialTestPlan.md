# Initial Test Plan

## 1. Wann beginnen Verifikation und Validation? Wann sind sie beendet?
<!--- When do verification and validation start? When are they complete? -->

### Validation: Die richtige Anwendung bauen!

180 wurde entwickelt unter der Annahme, dass es für jeden Studenten kompliziert ist, sein Studium entsprechend der Studienordnung zu planen. Insbesondere die Beachtung aller Regeln der Vertiefungsgebiete ist kompliziert und erfordert mehrfaches Überprüfen aller Bedingungen. [Beispiel?] In diesem Bereich lässt die Studienordnung einen großen Spielraum zu, der entsprechend der eigenen Interesseren ausgefüllt werden kann aber auch muss. Die Menge aller gültigen Belegungen ist damit sehr groß, übersieht man allerdings eine einzige Bedingung führt dies zu einem ungültigen Belegungsplan. Merkt man dies nicht rechtzeitig, muss im schlimmsten Fall ein weiteres Semester im Bachelorstudium eingeplant werden.

Daher ist die Idee von 180 diese manuelle und fehleranfällige Prüfung zu automatisieren. Da die Regeln der Studienordnung sich nicht schnell ändern (mehr zu möglichen Änderungen der Studienordnung weiter unten [vielleicht als Footnote]), genügt es, die Regeln einmal korrekt zu implementieren.
Daher ist dies auch der zentrale Punkt der Validierung: Die Anwendung muss genau dann ausgeben, dass ein Belegungsplan valide ist, wenn er nach den Paragraphen der Studienordnung korrekt ist. Kann die Anwendung dies nicht garantieren, ist sie nahezu nutzlos. Wird der Anwendung nicht vertraut, wird sie niemand nutzen, da sowieso eine manuelle Prüfung notwendig wird.

* nur Wünsche von Studenten erfüllt, wenn komplette Studienordnung richtig abgedeckt ist
* Start: PEM, End: 

### Verifikation: Die Anwendung richtig bauen!

Um die Anwendung richtig zu bauen, folgt man der Spezifikation. In diesem Fall gibt es keine interne, von den Entwicklern gemeinsam mit den Anwendern festgelegte Spezifikation. Allerdings gibt es eine externe Spezifikation: die Studienordnung. Diese wurde zwar nicht mit dem Ziel geschrieben, als Grundlage für die Entwicklung einer Anwendung zu stehen, doch definiert sie sehr genau die Anforderungen an einen korrekten Belegungsplan.
Wir betrachen daher im Folgenden die Studienordnung als die Spezifikation für 180. Erfüllt 180 am Ende alle Paragraphen der Studienordnung mit im Programm implementierten Regeln, ist das Programm korrekt.

[folgenden Absatz an einen besseren Platz verschieben]
Die Studienordnung ist als Artefakt sehr statisch, sie ändert sich nahezu nie. Zusätzlich zur Studienordnung sind aber die halbjährlich erscheinenden Vorlesungsverzeichnisse relevante Artefakte für 180.

* niemals komplett, da jedes Semester neue Fächer mit eigenen Vertiefungsregeln dazu kommen (**TODO exemplar**)
* Start: manuell zu Begin des Projektes


* Tests sollten eher sein, sind aber erst am Ende der Entwicklung
* permanente V&V notwenig, Grund für TestProjekt


## 2. Welche Technologien sollen während der Entwicklung angewandt werden?
<!--- What particular techniques should be applied during development? -->

* TDD
* static analysis --> bis jetzt gar nicht umgesetzt

* Randomisierte Tests bieten sich nicht an, Zuverlässigkeit am besten über genau Tests.

Laut dem ursprünglichen Paper von D. Hamlet über Random Testing.
> The [..] meaning of "random testing" refers to an explicit lack of "system" in the choice of test data, so that there is no correlation among different tests.

In unserem Fall müssen die Testfälle aber sehr genau auspezifiert sein, um bestimmte Grenzfälle abzudecken.
Eine zufällige Belegung wird nahezu immer falsch sein.


Tradeoff Kosten-Korrektheit: Bei uns ganz klar in Richtung Korrektheit. Korrektheit ist oberstes Gut, weil eine fälschlicherweise korrekte Belegung unschöne Folgen haben kann.

Macht die Anwendung unnnutzbar, wenn man sich nicht darauf verlassen kann.


## 3. Wann ist die Anwendung bereit für eine Veröffentlichung?
<!--- How can we assess the readiness of a product? -->

Wir definieren Fertigkeit ("readiness") auf Basis von drei Faktoren:
* **Korrektheit**: Wie bereits im ersten Abschnitt erwähnt ist die Korrektheit der Anwendung das wichtigste Kriterium. Alle Regeln der Studienordung müssen korrekt implementiert und abgedeckt sein.
* **Vertraulichkeit**: Die Daten des Nutzers verbleiben immer auf dem lokalen Rechner und werden insbesondere nicht in einer Datenbank gespeichert. Der Belegungsplan eines Nutzers sollte privat bleiben und für den Betreiber des Servers niemals einsehbar sein. 
* **Usability**: Die Webseite sollte gut zu benutzen sein. Insbesondere muss zu jedem Zeitpunkt klar sein, was die aktuelle Belegung ist, und ob diese korrekt ist oder nicht.

Von den drei Fertigkeits-Kritieren ist die Usability am schwierigsten zu erfassen.

Vertraulichkeit **TODO**.

Die Korrektheit der Anwendung zeigen wir im **TODO** Teil. Dort ordnen wir den Paragraphen der Studienordnung die implementierten Programmregeln zu, und zeigen, dass jede Anforderung der Studienordnung erfüllt ist.

Desweiteren ist Verlässlichkeit ("reliability") kein Problem, weil es sich um eine statische Webseite handelt, und damit keinerlei Ressourcen des Server über das Ausliefern der Daten hinaus benötigt werden. Desweiteren kann sich der Nutzer die Anwendung auch lokal auf seinen Rechner herunterladen, und die Anwendung so nutzen.
Selbst wenn der Nutzer auf die Online-Anwendung vertraut und diese für eine kurze Zeit nicht erreichbar ist, stellt dies auch kein Problem dar, da eine Studien- und Belegungsplanung üblicherweise über einen Zeitraum von mind. 3 Jahren erfolgt.



## 4. Wie wird die Qualität in zukünftigen Releases sichergestellt?
<!--- How can we control the quality of successive releases? -->

[Beispiel aus data.json zeigen?]
Das Hauptproblem der Aktualisierung sind die halbjährlich veröffentlichten Lehrveranstaltungsverzeichnisse. Diese müssen manuell in das 180 übertragen werden. Hierbei ist insbesondere auf die Vertiefungsgebiete einer Veranstaltung zu achten. Wird bei einer Veranstaltung ein falsches Vertiefungsgebiet eingetragen, macht dies eigentlich gültige Belegungen ungültig, oder erlaubt Belegungen, die nicht erlaubt werden sollten. 


* jedes Semester neue Veranstaltungen müssen per Hand in das System übertragen werden --> sehr fehleranfällig
* TODO: wie macht man das richtig?


Veranstaltungspflege


Ein offensichtliches Problem stellt die Änderung oder Neuverfassung der Studienordnung dar. In diesem Fall muss die Anwendung entweder behutsam angepasst werden, oder komplett neu entwickelt werden. Deswegen ist es wichtig, von einer Änderung der Studienordnung so schnell wie möglich zu erfahren. Es lässt sich dafür aber keine gute technische Lösung implementieren. 
Da Änderungen der Studienordnung aber öffentlich angekündigt werden müssen, und oft auch mit Diskussionen zwischen den Studierenden und Lehrenden einhergehen, verlassen wir uns auf schnelles Feedback des Fachschaftsrates oder der Studierendenschaft.

Technologien
Nutzt allerdings moderne Webtechnologien wie HTML5.
Deswegen ist in den nächsten Jahren keine Inkompatibiliät oder Beendigung der Unterstützung durch Browser-Hersteller zu erwarten.



## 5. Wie kann der Entwicklungsprozess selbst verbessert werden?
<!--- How can the development process itself be improved? -->

Wie bereits erwähnt ist das Hauptproblem die Aktualisierung der Veranstaltungsdatenbank.

* Code Reviews (insebesondere von nachträglichen Änderungen)
* 2 unabhängige Änderungseingabe (neue Veranstaltung) --> erst dann in System

Vorher manuelles, fehleranfälliges Testen. Durch die von uns zu entwickelnden Tests wird das manuelle Testen unnötig.
Durch eine hohe Testabdeckung steigt desweiteren


## Klassifizierung nach verschiedenen Test-Kriterien

## Zusammenfassung

Im Folgenden fassen wir zusammen, wie wir den Status quo durch unseren initialen Test-Plan verbessern möchten.

* Mapping zwischen Regeln und Paragraphen, zeigen dass vollständig (Validation-Testing)
* Defekt-Testing: Hier werden wir ein Test-Skript entwickeln, dass die data.js, die schon mehrfach Syntax-Fehler enthielt, auf ebendiese überprueft
* Unit-Tests für jede Regel im Programm
* System-Tests mit kompletten, echten Belegungsplänen
* Kleine User-Study mit folgenden Fragen:
** dfasdf
** dfasdf


**TODO** Development, Release- und Usertesting (wir haben nur das erste)
**TODO** Unit/Component, Integration, System Testing
