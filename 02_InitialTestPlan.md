#Initial Test Plan

##1. When do verification and validation start? When are they complete?
###Validation: Das ist richtige machen

* nur Wünsche von Studenten erfüllt, wenn komplette Studienordnung richtig abgedeckt ist
* Studienordnung ist eine externe Spezifikation, keine interne
* Anwendung unter der Annahme entwickelt, dass Planung der Belegung kompliziert ist, wenn man alle Regeln beachten muss
* Wenn alles geregelt wäre, bräuchte man die Anwendung nicht. Da es aber einen großen Spielraum und eine große Menge an gültigen Belegungen gibt,da jedes Semester neue Fächer mit eigenen Vertiefungsregeln dazu kommen (**TODO exemplar* ist eine Anwendung zur Unterstützung hilfreich.
* Start: PEM 
* End: 

###Verification: 
Das was gemacht wird, richtig gemacht wird -- Specification erfüllen

* Anwendung muss mit Studienordnung übereinstimmen (alle Regeln richtig abdecken)
* niemals komplett, da jedes Semester neue Fächer mit eigenen Vertiefungsregeln dazu kommen (**TODO exemplar**)
* Start: manuell zu Begin des Projektes


* Tests sollten eher sein, sind aber erst am Ende der Entwicklung
* permanente V&V notwenig, Grund für TestProjekt


##2. What particular techniques should be applied during development?
* TDD
* static analysis --> bis jetzt gar nicht umgesetzt


##3. How can we assess the readiness of a product?
* Readiness: alle Regeln der Studienordung korrekt implementiert und abgedeckt sind
* **TODO** bis jetzt: unformale regeln in Code, welche auf Regeln in Studienordnung mappen --> sollte Formal gezeigt werden im Hauptteil
* Vertaulichkeit
* Reliablitiy: alles lokal 


##4. How can we control the quality of successive releases?
* jedes Semester neue Veranstaltungen müssen per Hand in das System übertragen werden --> sehr fehleranfällig
* TODO: wie macht man das richtig?

##5.How can the development process itself be improved?
* TDD
* Code Reviews (insebesondere von nachträglichen Änderungen)
* 2 unabhängige Änderungseingabe (neue Veranstaltung) --> erst dann in System