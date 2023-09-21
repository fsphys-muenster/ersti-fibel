# ersti-fibel
Die Ersti-Φbel ist die Erstsemester-Informationszeitschrift des Fachbereichs Physik der [Westfälischen Wilhelms-Universität Münster](https://www.uni-muenster.de/).
Die vollständige Version der Ersti-Φbel ist für Physik-Studierende der WWU (Nutzergruppe `p0stud`) [auf der Homepage der Fachschaft Physik als PDF-Datei verfügbar](https://sso.uni-muenster.de/Physik.FSPHYS/intern/physiker/erstifibel/).

## Hinweis zum Submodul [`private`](private/)
Um Zugriff auf das Submodul in zivgitlab zu erhalten, muss man sich an einen Admin der Fachschaft wenden.
In diesem Submodul sind alle Dateien enthalten, die aus rechtlichen (Urheberrecht) oder anderen Gründen nicht öffentlich verteilt werden können/sollen.
Im Wesentlichen handelt es sich dabei um Binärdateien wie Bilder und interne Informationen (z. B. zu *möglichen Sponsoren/Werbekunden* und *Lösungen zu Rätseln* 😉).

Siehe auch [`private/README.md`](private/README.md) für weitere Informationen.

## Hinweise zur Ordnerstruktur und zum Umgang mit den Dateien
- Bedeutung der einzelnen TeX-Dateien:
  - Hauptdatei ist die Datei [`fibel.tex`](fibel.tex); diese also (i.a. mit lualatex) kompilieren.
  - Zum Schreiben von Artikeln sind eigentlich nur die Datei [`tex/10_Inhalt.tex`](tex/10_Inhalt.tex) und die diversen Dateien im Ordner [`tex/artikel`](tex/artikel/)
interessant.
  Die Artikel werden im Ordner [`tex/artikel`](tex/artikel/) gespeichert und innerhalb von [`10_Inhalt.tex`](tex/10_Inhalt.tex) eingebunden.

    **Hinweis:** Wenn das Kompilieren zu lange dauert, kann man temporär alle Artikel, die man gerade nicht braucht, auskommentieren.
    Dann geht das Ganze deutlich schneller!
  - Die Dateien [`tex/01_PaketeEinstellungen.tex`](tex/01_PaketeEinstellungen.tex) und [`tex/02_EigeneBefehle.tex`](tex/02_EigeneBefehle.tex) enthalten die „Innereien“ der Fibel.
    Wenn man nicht das allgemeine Layout der Fibel (z. B. Inhaltsverzeichnis oder Aussehen der Überschriften) ändern möchte, muss man dort nichts tun.
    In [`02_EigeneBefehle.tex`](tex/02_EigeneBefehle.tex) sind auch einige Variablen wie das aktuelle Semester/Jahr definiert, die an einigen Stellen verwendet werden.
    Diese also für eine neue Ausgabe entsprechend ändern!
  - [`tex/03_Titelseite.tex`](tex/03_Titelseite.tex) enthält nur die Titelseite.
    Muss wahrscheinlich nicht geändert werden.
  - [`tex/04_Impressum.tex`](tex/04_Impressum.tex) enthält das Impressum.
- Zum richtigen Verwenden des `pullquote`-Pakets mit `shape=image`-Option und damit auch zum Kompilieren der Fibel muss [ImageMagick](https://www.imagemagick.org/) installiert und über die Kommandozeile ausführbar sein!
  (Außer, die `.pqshape.txt`-Datei für das entsprechende Bild ist schon vorhanden; dann braucht man ImageMagick nicht mehr.)
- Im [`res`](res/)-Ordner (für „resource“) sind die Bilddateien (und andere
  Binärdateien).
- Der Ordner [`pullquote`](pullquote/) ist nicht wichtig; er enthält nur die verwendete `pullquote`-Version mit Dokumentation.
  Die Datei [`pullquote.sty`](pullquote.sty) im Hauptordner ist dementsprechend eine Kopie und dort vorhanden, damit LaTeX sie findet.
- Die Datei [`T1LukasSvatba.fd`](T1LukasSvatba.fd) enthält nur eine kleine Änderung im Gegensatz zur [Originalversion](https://ctan.org/pkg/aurical), um eine LaTeX-Warnung loszuwerden.
- [`create_web_version.sh`](create_web_version.sh) ist Unix-Shell-Skript, mit dem man die Web-Version der Fibel (sollte unter 15 MB groß sein) erstellen kann.
  Dazu wird das Programm [Ghostscript](https://www.ghostscript.com/) aufgerufen, das u. a. Bilder mit sehr hoher Auflösung in der PDF-Datei herunterskaliert.
  Verwendung:

      ./create_web_version.sh fibel.pdf fibel_web.pdf

## Lizenz
[![CC BY-NC-SA 4.0](https://mirrors.creativecommons.org/presskit/buttons/88x31/svg/by-nc-sa.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/)

Dieses Werk ist, wo nicht anders angegeben, unter der [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-nc-sa/4.0/) lizenziert.
Insbesondere betrifft dies alle Texte (Unterverzeichnis [`tex`](tex/)).
Werke von anderen Autoren (außerhalb der Fachschaft Physik) unterliegen eventuell anderen Lizenzbedingungen.
Diese sind entweder im entsprechenden Verzeichnis zentral in einer Datei `LICENSE INFORMATION` oder in den jeweiligen Dateien selbst vermerkt.

