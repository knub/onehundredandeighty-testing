#Initial Test Plan

##1. When do verification and validation start? When are they complete?
###Validation: Das ist richtige machen

* nur Wünsche von Studenten erfüllt, wenn komplette Studienordnung richtig abgedeckt ist
* Studienordnung ist eine externe Spezifikation, keine interne
* Anwendung unter der Annahme entwickelt, dass Planung der Belegung kompliziert ist, wenn man alle Regeln beachten muss
* Wenn alles geregelt wäre, bräuchte man die Anwendung nicht. Da es aber einen großen Spielraum und eine große Menge an gültigen Belegungen gibt,da jedes Semester neue Fächer mit eigenen Vertiefungsregeln dazu kommen (**TODO exemplar* ist eine Anwendung zur Unterstützung hilfreich.
* Start: Deploy
* End: 


###Verification: 
Das was gemacht wird, richtig gemacht wird -- Specification erfüllen

* Anwendung muss mit Studienordnung übereinstimmen (alle Regeln richtig abdecken)
* niemals komplett, da jedes Semester neue Fächer mit eigenen Vertiefungsregeln dazu kommen (**TODO exemplar**)
* Start: manuell zu Begin des Projektes

##2. What particular techniques should be applied during development?
* TDD

##3. How can we assess the readiness of a product?
* alle Regeln der Studienordung korrekt implementiert und abgedeckt sind

##4. How can we control the quality of successive releases?
* jedes Semester neue Veranstaltungen müssen per Hand in das System übertragen werden --> sehr fehleranfällig
* TODO: wie macht man das richtig?

##5.How can the development process itself be improved?
* TDD
* Code Reviews (insebesondere von nachträglichen Änderungen)
* 2 unabhängige Änderungseingabe (neue Veranstaltung) --> erst dann in System