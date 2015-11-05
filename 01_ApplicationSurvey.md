# 180: Testen, Verifizieren, Analysieren

## Überblick über die Anwendung

### Sinn und Zweck
180 ist eine Web-Anwendung, die Bachelor-Studenten des Hasso-Plattner-Instituts dabei unterstuetzt, eine korrekte Belegung zu finden, und somit ihr Bachelorstudium erfolgreich zu beenden. Durch die Wahl von unterschiedlichen Vertiefungsgebieten sowie die Tatsache, dass viele Veranstaltungen mehreren Vertiefungsgebieten zuordenbar sind, kann es schwierig werden, eine korrekte Belegung zu finden. 

Der Name 180 stammt von den 180 Leistungspunkten, die erforderlich sind, um das Bachelorstudium erfolgreich abzuschließen.
Es existiert desweiteren ein Schwesterprojekt namens 120, das von Masterstudenten des HPIs genutzt werden kann, und das den gleichen Zweck verfolgt.
Dieses Dokument befasst sich allerdings nur mit 180.

### Entwicklungsparadigma und Programmiersprache
<!--- Which development paradigm? Which development language(s)? --->
* Javascript
* no TDD

### Anforderungen, Spezifikation und Dokumentation?
<!--- Requirements? Specification? Documentation? Other artefacts available? --->
Die Anwendungen wurde aus dem persönlichen Bedarf heraus entwickelt, und es gab keinen externen Auftraggeber. Der Entwickler war Stefan Bunk.

Obwohl es damit keine Spezifikation im klassischen Sinne gibt, sind dennoch die zu implementierenden Regeln genau festgelegt: In der **TODO: Titel Studienordnung**, der Studienordnung für den Bachelor- und Masterstudiengang am HPI.


* Specification: Studienordnung des HPI --> TODO Vorstellung Regeln, Vertiefungsgebiete
* vertrauliche Daten: kein Sharen über das Internet
* Waterfall

### Current testing status, approach? Bug repositories?
* no tests
* [Issues from Github](https://github.com/knub/onehundredandeighty/issues?utf8=%E2%9C%93&q=is%3Aissue)

Analyse der bisherigen Issues:
* 2 * Feature-Requests nach Berechnung der Gesamtnote --> abgelehnt
* 1 * Syntaxfehler, der die Ausfuehrung des Programmes unmoeglich machte
* 1 * Feature-Request nach variabler Anzahl der Semester, der teilweise umgesetzt wurde.
* 1 * (Issue)[https://github.com/knub/onehundredandeighty/pull/5] aufgrund einer Aenderung der Wirtschaftsvorlesung, die statt zwei 3-LP-Veranstaltungen ab dem WS11/12 als eine 6-LP-Veranstaltung angeboten wurden.

### What is your current personal involvement in the application? Developer, tester, user, etc.?
* 1 Developer and User
* 2 User


### Stakeholders

* Students
* HPI Studienverwaltung
