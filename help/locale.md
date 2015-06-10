# Locale
Um unter Arch deutsche Umlaute im Terminal sehen zu können, muss die locale angepasst werden.
Zunächst muss hierfür unter `/etc/locale.gen`, die Zeile mit `de_DE.utf8` einkommentiert werden.

```
sudo nano /etc/locale.gen
# Bearbeite die Datei und speicher sie
locale-gen
```

Mit `locale-gen` werden die einkommentierten Zeilen für dich verfügbar. Nun kannst du in `/etc/locale.conf` deine Sprache
exporten. Hierbei diese auf das ganze System angewandt.


```
/etc/locale.conf
----------------
export LANG=de_DE.utf8
```

Um jetzt die Sprache anzuwenden, musst du das System neustarten.
