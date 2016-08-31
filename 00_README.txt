- Bedeutung der einzelnen TeX-Dateien:
	- Hauptdatei ist die Datei "fibel.tex"; diese also kompilieren.
	- Zum Schreiben von Artikeln ist eigentlich nur die Datei "10_Inhalt.tex"
	  und die diversen Dateien im Ordner "artikel" interessant. Die Artikel
	  werden im Ordner "artikel" gespeichert innerhalb von "10_Inhalt.tex"
	  eingebunden.
	  HINWEIS: Wenn das Kompilieren zu lange dauert, kann man temporär die
	  ganzen Artikel auskommentieren. Dann geht das Ganze deutlich schneller!
	- Die Dateien "01_PaketeEinstellungen.tex" und "02_EigeneBefehle.tex"
	  enthalten die "Innereien" der Fibel. Wenn man nicht das allgemeine Layout
	  der Fibel (z.B. Inhaltsverzeichnis oder Aussehen der Überschriften)
	  ändern möchte, muss man dort nichts tun.
	  In "02_EigeneBefehle.tex" sind auch einige Variablen wie das aktuelle
	  Semester/Jahr definiert, die an einigen Stellen verwendet werden. Diese
	  also entsprechend ändern!
	- "03_Titelseite.tex" enthält nur die Titelseite. Muss wahrscheinlich nicht
	  geändert werden.
	- "04_Impressum.tex" enthält das Impressum.
- Zum richtigen Verwenden der "pullquote"-Package mit "shape=image"-Option und
  damit auch zum Kompilieren der Fibel muss ImageMagick installiert und über
  die Kommandozeile ausführbar sein! (Außer, die .pqshape.txt-Datei für das
  entsprechende Bild ist schon vorhanden; dann braucht man ImageMagick nicht mehr.)
- Im "res"-Ordner (für "resource") sind die Bilddateien (und andere
  Binärdateien). Die Unterordner namens "compressed" enthalten komprimierte
  Dateien (z.B. kleinere JPG-Versionen von Bildern), damit die PDF-Datei der
  Fibel nicht so groß wird. Wenn man mit dem Befehl
  "\includegraphicscompressed" Bilder einbindet und es eine Version des Bildes
  in einem "compressed"-Unterverzeichnis gibt, wird das automatisch
  eingebunden.

- Der Ordner "pullquote" ist nicht wichtig; er enthält nur die verwendete
  pullquote-Version mit Dokumentation. Die Datei "pullquote.sty" im Hauptordner
  ist dementsprechend eine Kopie und dort vorhanden, damit LaTeX sie findet.
- Die Datei "T1LukasSvatba.fd" enthält nur eine kleine Änderung, um eine LaTeX-
  Warnung loszuwerden. Hoffentlich passiert dadurch nichts Schlimmes ;-)
- create_web_version.sh ist Unix-Shell-Skript, mit dem man die Web-Version der
  Fibel (sollte unter 15MB groß sein) erstellen kann. Dazu wird das Programm
  Ghostscript aufgerufen, das u.a. Bilder mit sehr hoher Auflösung in der PDF-
  Datei herunterskaliert. Verwendung:
      ./create_web_version.sh fibel.pdf fibel_web.pdf

