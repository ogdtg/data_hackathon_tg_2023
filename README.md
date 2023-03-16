


# Hackathon Thurgau: Jugendchallenge

# Inhalt
1. [Challenge](##challenge)
2. [Daten (Auswahl)](#daten)
    1. [Energiedaten](#energiedaten)
    2. [Gebäude- und Wohnungsdaten](#wohnungs--und-gebäudedaten)
    3. [Bevölkerungsdaten](#bevölkerungsdaten)
    4. [Abstimmungsdaten](#abstimmungsdaten)
    5. [Sonstiges](#sonstiges)

---

## Challenge
### Energiecheck: Wie steht deine Gemeinde da?

**Um was geht es?**

Energie, Energie und nochmal Energie. Diesem Thema kann man derzeit kaum aus dem Weg gehen. Doch wie sieht es eigentlich bei euch vor der Haustür aus? Welche Gemeinde könnte unter einer drohenden Energieknappheit besonders leiden? Wo wird am meisten Energie verbraucht und wer ist in puncto erneuerbare Energien ganz vorne? Diese und andere Fragen sollen in unserer Challenge beantwortet werden

**Die Challenge**

Die Thurgauer Gemeinden liefern regelmässig Daten zur Energieerzeugung und zum Verbrauch. Doch ist es für den Laien relativ schwierig irgendwelche Schlüsse aus staubtrockenen Tabellen zu ziehen. In dieser Challenge soll es deshalb darum gehen die vorliegenden Daten originell zu visualisieren. Ziel soll es sein, dass jede/r Bürger/in in der Lage ist, zu erkennen, wo die eigene Gemeinde im Thurgauer Vergleich steht. Dabei sollen verschiedene Faktoren aus dem Bereich Energie miteinbezogen werden. Bei der Visualisierung könnt ihr eurer Kreativität freien Lauf lassen.

**Was stellen wir euch dafür zur Verfügung?**

Wir von der OGD-Koordinationsstelle des Kantons Thurgau stellen verschiedene energiebezogene- Daten über unseren Datenkatalog zur Verfügung und zeigen euch, wo ihr weitere Daten und Infos findet. Solltet ihr Verständnisfragen zu den Daten selbst haben oder Unterstützung bei der Visualisierung oder Datenanalyse benötigen, stehen wir euch gern mit Rat und Tat zur Seite.

---

## Daten

---

### Energiedaten

Auf unserem Dateportal [data.tg.ch](https://data.tg.ch/pages/start/) findet ihr mehrere Datensätze zu Energie. Alle Daten können als `csv`, `xlsx` oder JSON heruntergeladen werden:

- [Endenergieverbrauch im Gebäudebereich nach Energieträgern und Gemeinden](https://data.tg.ch/explore/dataset/div-energie-5/information/)
- [Erneuerbare Elektrizitätsproduktion nach Energieträgern und Gemeinden](https://data.tg.ch/explore/dataset/div-energie-10/information/)
- [CO2-Emissionen im Gebäudebereich nach Energieträgern und Gemeinden](https://data.tg.ch/explore/dataset/div-energie-8/information/)
- [Energieförderprogramm im Kanton Thurgau: Umgesetzte Projekte in den Thurgauer Gemeinden](https://data.tg.ch/explore/dataset/div-energie-2/information/)

Weitere Energiedaten findet ihr auf [data.tg.ch](https://data.tg.ch/explore/?sort=modified&refine.theme=Energie) oder auf [opendata.swiss](https://opendata.swiss/de/dataset/?q=Energie&sort=score%20desc,%20metadata_modified%20desc&organization=bundesamt-fur-energie-bfe&page=1) (nicht alle Daten hier beziehen sich auf den Thurgau.)

---

#### Energiereporter

Der Ordner `Energiereporter` enthält zwei Datensätze im csv Format.

**solarenergiepotential_tg_gemeinden.csv**

Die interaktive Anwendung [sonnendach.ch](https://www.uvek-gis.admin.ch/BFE/sonnendach/?lang=de) informiert über die Eignung von Hausdächern für die Solarenergienutzung. Auf einfache Weise wird vermittelt, wieviel Solarstrom oder Solarwärme mit einem Hausdach produziert werden könnte. Für die Gemeinden berechnet das Bundesamt für Energie BFE auf der Grundlage der Solarpotenziale der einzelnen Hausdächer, wie gross die Potenziale für Solarstrom und Solarwärme für das gesamte Gemeindegebiet sind. Zwei Szenarien werden berechnet: Im ersten Szenario werden alle Dächer nur für Solarstrom verwendet. Im zweiten Szenario wird pro Haus das beste Dachstück für Solarwärme und der Rest für Solarstrom verwendet.

**energyreporter_municipality.csv**

Der Energie Reporter zeigt die Entwicklungen der Energiewende in den 
Gemeinden des Thurgaus. Der Datensatz zeigt den aktuellen Fortschritt in den 
ausgewählten Bereichen Elektroautos, Produktion Solarstrom und erneuerbar 
heizen für jede Gemeinde.

Der aktuelle Datensatz mit der Endung `_latest` enthält den aktuellen Fortschritt aller Gemeinden im Thurgau im CSV-Format.

Der historisierte Datensatz mit der Endung `_historized` enthält monatliche Zeitschnitte seit dem Bestehen von Energie Reporter (1. März 2021) mit dem Fortschritt aller Gemeinden im CSV-Format.

Auf der Seite des [Energiereporter](https://www.energieschweiz.ch/tools/energiereporter/) könnt Ihr die Bedeutung der einzelnen Indikatoren einsehen. Klickt in der Grafik auf der Seite einfach auf die entsprechenden Indikatoren, um Informationen zum genauen Inhalt und zur Berechnung zu bekommen.

Untenstehend findet ihr ausserdem eine Beschreibung der Variablen im Datensatz.

**Beschreibung Attribute**

| Attribut                            | Typ                | Einheit      | Beschreibung
|-------------------------------------|--------------------|--------------|---------------------------------------------------------------------------------------
| bfs_nr                              | Integer            |              | Offizielle Gemeinde-ID des Bundesamtes für Statistik (nur für Gemeindedaten)
| municipality                        | Text               |              | Gemeindename (nur für Gemeindedaten)
| canton                              | Text               |              | Kantonskürzel (nur für Gemeinde- und Kantonsdaten)
| energyreporter_date                 | Datum (YYYY-MM-DD) |              | Datenstand der Energie Reporter-Applikation (nur für historisierte Daten)
| electric_car_share                  | Zahl               | Dezimalbruch | Indikator: Elektroautos (Details siehe unten)
| electric_car_share_last_change      | Datum (YYYY-MM-DD) |              | Datenstand der primären Datenquelle (ASTRA)
| solar_potential_usage               | Zahl               | Dezimalbruch | Indikator: Produktion Solarstrom (Details siehe unten)
| solar_potential_usage_last_change   | Datum (YYYY-MM-DD) |              | Letzte Änderung der primären Datenquelle (Produktionsanlagen, Solarpotenzial)
| renewable_heating_share             | Zahl               | Dezimalbruch | Indikator: Erneuerbar heizen (Details siehe unten)
| renewable_heating_share_coverage    | Zahl               | Dezimalbruch | Abdeckung der Heizungsdaten zur Qualitätsabschätzung des Indikators Erneuerbar heizen
| renewable_heating_share_last_change | Datum (YYYY-MM-DD) |              | Letzte Änderung der primären Datenquelle (Heizungen aus dem GWR)

---

### Wohnungs- und Gebäudedaten

Auf unserem Dateportal [data.tg.ch](https://data.tg.ch/pages/start/) findet ihr mehrere Datensätze zu Leerstand, Neubauten und Wohnungsbestand. Alle Daten können als `csv`, `xlsx` oder JSON heruntergeladen werden:

- [Leerstehende Wohnungen nach Politischer Gemeinde](https://data.tg.ch/explore/dataset/sk-stat-93/information/)
- [Neu erstellte Wohngebäude nach Gebäudekategorie nach Politischer Gemeinde](https://data.tg.ch/explore/dataset/sk-stat-91/information/)
- [Neu erstellte Wohnungen nach Anzahl Zimmer nach Politischer Gemeinde](https://data.tg.ch/explore/dataset/sk-stat-92/information/)
- [Wohnungen nach Gebäudekategorie und Politischer Gemeinde (Bestand) ](https://data.tg.ch/explore/dataset/sk-stat-89/information/)
- [Wohnungen nach Zimmerzahl und Politischer Gemeinde (Bestand)](https://data.tg.ch/explore/dataset/sk-stat-90/information/)

Auf opendata.swiss findet sich ausserdem ein Datensatz zum Thema [Minergie-Häuser pro Gemeinde](https://opendata.swiss/de/dataset/anzahl-minergie-gebaude-in-gemeinden).
Minergie sorgt für eine Qualitätssicherung in der Planungs-, Bau- und Betriebsphase. Die drei bekannten Gebäudestandards Minergie, Minergie-P und Minergie-A stellen sicher, dass bereits in der Planungsphase höchste Qualität und (Energie-)Effizienz angestrebt wird. Mit dem Zusatz ECO werden zudem die beiden Themen Gesundheit und Bauökologie berücksichtigt. Dieser Datenbestand enthält die Anzahl zertifizierter Minergie-Gebäude pro Gemeinde (BFS-Nr.) aufgeschlüsselt nach den unterschiedlichen Standards.

---

#### GWS_BFS

Der Ordner `GWS_BFS` enthält zwei Datensätze im csv Format.

**2021_Gebaeude_Energiequelle_Heizung.csv**

Datensatz enthält Daten zur Energiequelle, welche für die Heizung von Wohnungen und Häusern verwendet wird. Dabei werden die Zahlen als Anzahl Wohnungen pro Energieträger, pro Gemeinde angegeben.

**2021_Gebaeude_Energiequelle_Warmwasser.csv**

Datensatz enthält Daten zur Energiequelle, welche zur Erzeugung von Warmwasser verwendet wird. Dabei werden die Zahlen als Anzahl Wohnungen pro Energieträger, pro Gemeinde angegeben.

**2021_Gebeude_Heizsystem_Warmwasser.csv**

Datensatz enthält Daten zur Art des Heizsystems in Wohnungen und Häusern. Dabei werden die Zahlen als Anzahl Wohnung pro Heizsystem, pro Gemeinde angegeben. So kann zum Beispiel ermittelt werden, wie viele Gebäude mit einer Wärmepumpe oder einem Thermischen Solarsystem beheizt werden.

Mehr Infos findet ihr [hier](https://statistik.tg.ch/themen-und-daten/bau-und-wohnen/gebaeude-und-wohnungen/energie-und-wasserversorgung.html/5964)

---

### Bevölkerungsdaten

Bevölkerungsdaten der Thurgauer Gemeinden in verschiedenen Aufschlüsselungen finden sich [hier](https://data.tg.ch/explore/?sort=modified&refine.theme=Bev%C3%B6lkerung).

---

### Abstimmungsdaten

Der Ordner `Abstimmungsdaten` enthält zwei Datensätze im csv Format.

**Eidg_Abst_Ebene_Gemeinden_ab_2000.csv**

Der Datensatz enthält Daten zum Abstimmungsverhalten innerhalb der Gemeinden für alle eidgenössischen Abstimmungen seit dem Jahr 2000. Im Datensatz enthalten sind dabei Informationen zur Abstimmungsvorlage selbst sowie die absoluten Zahlen der Stimmverteilung innerhalb der Gemeinde. Ausserdem bezeichenen die Variablen `D1E3`,`D2E1`,...,`D3E3` die dem Thema zugeordneten Themen. Datenquelle hierfür ist [swissvotes](https://swissvotes.ch/page/dataset).

**Eidg_Abst_Ebene_Gemeinden_ab_2000_Umwelt_Energie_Themen.csv**

Der Datensatz ist ein subset `Eidg_Abst_Ebene_Gemeinden_ab_2000.csv` und enthält nur de Abstimmungsvorlagen, welche sich mit den Themen Energie und/oder Umwelt befassen. Die Struktur des Datensatzes entspricht der von `Eidg_Abst_Ebene_Gemeinden_ab_2000.csv`.

---

### Sonstiges

- [Stromtankstellen im Thurgau](https://opendata.swiss/de/dataset/ladestationen-fuer-elektroautos)
- [Nachhaltiges Potenzial der nicht-verholzten Biomassenressourcen für Bioenergie in der Schweiz auf Gemeindeebene](https://opendata.swiss/de/dataset/nachhaltiges-potenzial-der-nicht-verholzten-biomassenressourcen-fur-bioenergie-in-der-schweiz-a)

Sämtliche OGD in der Schweiz und dem Thurgau finden sich auf [opendata.swiss](https://opendata.swiss/de) und/oder [data.tg.ch](https://data.tg.ch/pages/start/)

