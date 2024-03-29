


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

Energie, Energie und nochmal Energie. Diesem Thema kann man kaum aus dem Weg gehen, sei es aufgrund der Klimafrage oder der Szenarien einer Energiekrise. Doch wie sieht es eigentlich bei euch vor der Haustür aus? Welche Gemeinde könnte unter einer drohenden Energieknappheit besonders leiden? Wo wird am meisten Energie verbraucht und wer ist in puncto erneuerbare Energien ganz vorne? Diese und andere Fragen sollen in unserer Challenge beantwortet werden.

**Die Challenge**

Die Thurgauer Gemeinden liefern regelmässig Daten zur Energieerzeugung und zum Verbrauch. Doch ist es für den Laien relativ schwierig, irgendwelche Schlüsse aus staubtrockenen Tabellen zu ziehen. In dieser Challenge soll es deshalb darum gehen, die vorliegenden Daten originell zu visualisieren. Ziel soll es sein, dass jede/r Bürger/in in der Lage ist, zu erkennen, wo die eigene Gemeinde im Thurgauer Vergleich steht. Dabei sollen verschiedene Faktoren aus dem Bereich Energie miteinbezogen werden, ergänzt um weitere Indikatoren zur Gemeinde. Bei der Visualisierung und auch dabei, wie breit ihr das Energiethema fassen möchtet, könnt ihr eurer Kreativität freien Lauf lassen.

**Was stellen wir euch dafür zur Verfügung?**

Wir von der OGD-Koordinationsstelle des Kantons Thurgau stellen verschiedene energiebezogene Daten über unseren [Datenkatalog](https://data.tg.ch) zur Verfügung und zeigen euch, wo ihr weitere Daten und Infos findet (siehe Files oben und Beschreibungen unten). Solltet ihr Verständnisfragen zu den Daten selbst haben oder Unterstützung bei der Visualisierung oder Datenanalyse benötigen, stehen wir euch gern mit Rat und Tat zur Seite - vor Ort, via github oder Slack.

**Ein paar Hints & Tricks gefällig?**

Das KSR-Talenta-Team hat [hier ein kleines Tutorial](https://github.com/tkilla77/ksr_talit_hackathon) zur Visualisierung und zur Arbeit mit (geo)pandas zusammengestellt. Das Repo enthält auch eine Sammlung der Geometrien der Schweizer Gemeinden und Kantone...

---

## Daten

---

### Energiedaten

Auf unserem Dateportal [data.tg.ch](https://data.tg.ch/pages/start/) findet ihr mehrere Datensätze zum Thema Energie, die vom Amt für Energie zusammengetragen werden. Alle Daten können als `csv`, `xlsx` oder JSON heruntergeladen werden:

- [Endenergieverbrauch im Gebäudebereich nach Energieträgern und Gemeinden](https://data.tg.ch/explore/dataset/div-energie-5/information/)
- [Erneuerbare Elektrizitätsproduktion nach Energieträgern und Gemeinden](https://data.tg.ch/explore/dataset/div-energie-10/information/)
- [CO2-Emissionen im Gebäudebereich nach Energieträgern und Gemeinden](https://data.tg.ch/explore/dataset/div-energie-8/information/)
- [Energieförderprogramm im Kanton Thurgau: Umgesetzte Projekte in den Thurgauer Gemeinden](https://data.tg.ch/explore/dataset/div-energie-2/information/)

**Hinweis zum Datenstand**: Die Daten zum Energieverbrauch, der Elektrizitätsproduktion wie den Emissionen reichen von 2015 bis 2020 und sollten demnächst um die Daten aus dem Jahr 2021 ergänzt werden. Format und Struktur bleiben gleich, damit euer Tool die aktuellen Daten analog zu den bisherigen abbilden kann, sobald diese zur Verfügung stehen.

Weitere Energiedaten findet ihr auf [data.tg.ch](https://data.tg.ch/explore/?sort=modified&refine.theme=Energie) oder auf dem OGD-Portal des Bundes [opendata.swiss](https://opendata.swiss/de/dataset/?q=Energie&sort=score%20desc,%20metadata_modified%20desc&organization=bundesamt-fur-energie-bfe&page=1) (nicht alle Daten hier beziehen sich auf den Thurgau.)



---

#### Energie Reporter und Solarpotential - Energiezukunft in den Gemeinden

Der Energie Reporter von Energie Schweiz sammelt verschiedene Daten rund um das Thema Energiezukunft. Wir haben euch die Datensätze gefiltert nach den Thurgauer Gemeinden hier auf github zusammengestellt. 
Der entsprechende Ordner [Energiereporter](https://github.com/ogdtg/data_hackathon_tg_2023/tree/main/Energiereporter) enthält folgende Datensätze im csv-Format:

**energyreporter_municipality.csv**

Der [Energie Reporter](https://www.energieschweiz.ch/tools/energiereporter/) zeigt die Entwicklungen der Energiewende in den 
Gemeinden des Thurgaus. Der Datensatz zeigt den aktuellen Fortschritt in den 
ausgewählten Bereichen Elektroautos, Produktion Solarstrom und erneuerbar 
heizen für jede Gemeinde.

Der aktuelle Datensatz mit der Endung `_latest` enthält den aktuellen Fortschritt aller Gemeinden im Thurgau im csv-Format.

Der historisierte Datensatz mit der Endung `_historized` enthält monatliche Zeitschnitte seit Beginn der Datenerhebung durch den Energie Reporter (1. März 2021) mit dem Fortschritt aller Gemeinden im csv-Format.

Auf der Seite des [Energie Reporters](https://www.energieschweiz.ch/tools/energiereporter/) könnt ihr die Bedeutung der einzelnen Indikatoren einsehen. Klickt in der Grafik auf der Seite einfach auf die entsprechenden Indikatoren, um Informationen zum genauen Inhalt und zur Berechnung zu bekommen.

Untenstehend findet ihr ausserdem eine Beschreibung der Variablen im Datensatz.

**Beschreibung Attribute**

| Attribut                            | Typ                | Einheit      | Beschreibung
|-------------------------------------|--------------------|--------------|---------------------------------------------------------------------------------------
| bfs_nr                              | Integer            |              | Offizielle Gemeinde-Nummer des Bundesamtes für Statistik (nur für Gemeindedaten)
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


**solarenergiepotential_tg_gemeinden.csv**

Die interaktive Anwendung [sonnendach.ch](https://www.uvek-gis.admin.ch/BFE/sonnendach/?lang=de) des Bundesamts für Energie BFE informiert über die Eignung von Hausdächern für die Solarenergienutzung. Auf einfache Weise wird vermittelt, wieviel Solarstrom oder Solarwärme mit einem Hausdach produziert werden könnte. Für die Gemeinden berechnet das BFE auf der Grundlage der Solarpotenziale der einzelnen Hausdächer, wie gross die Potenziale für Solarstrom und Solarwärme für das gesamte Gemeindegebiet sind. Zwei Szenarien werden berechnet: Im ersten Szenario bezieht sich auf Eignung der Dächer ausschliesslich für Solarstrom . Im zweiten Szenario wird pro Haus das beste Dachstück zur Berechnung des Potiential für Solarwärmeerzeugung reserviert und die übrigen Teilfläche zur Berechnung von Solarstromerzeugung verwendet. Details zu den Daten und der Berechnung der Potential findet ihr auf der [BFE-Webseite zu Solarenergie](https://www.bfe.admin.ch/bfe/de/home/versorgung/statistik-und-geodaten/geoinformation/geodaten/solar/solarenergie-eignung-hausdach.html).

---


### Wohnungs- und Gebäudedaten

Auf unserem Dateportal [data.tg.ch](https://data.tg.ch/pages/start/) findet ihr mehrere Datensätze zu Leerstand, Neubauten und Wohnungsbestand aus verschiedenen Statistiken des Bundesamts für Statistik, gefiltert nach den Thurgauer Gemeinden. Alle Daten können als `csv`, `xlsx` oder JSON heruntergeladen werden:

- [Leerstehende Wohnungen nach Politischer Gemeinde](https://data.tg.ch/explore/dataset/sk-stat-93/information/)
- [Neu erstellte Wohngebäude nach Gebäudekategorie nach Politischer Gemeinde](https://data.tg.ch/explore/dataset/sk-stat-91/information/)
- [Neu erstellte Wohnungen nach Anzahl Zimmer nach Politischer Gemeinde](https://data.tg.ch/explore/dataset/sk-stat-92/information/)
- [Wohnungen nach Gebäudekategorie und Politischer Gemeinde (Bestand) ](https://data.tg.ch/explore/dataset/sk-stat-89/information/)
- [Wohnungen nach Zimmerzahl und Politischer Gemeinde (Bestand)](https://data.tg.ch/explore/dataset/sk-stat-90/information/)

Auf opendata.swiss findet sich ausserdem ein Datensatz zum Thema [Minergie-Häuser pro Gemeinde](https://opendata.swiss/de/dataset/anzahl-minergie-gebaude-in-gemeinden).
Minergie sorgt für eine Qualitätssicherung in der Planungs-, Bau- und Betriebsphase. Die drei bekannten Gebäudestandards Minergie, Minergie-P und Minergie-A stellen sicher, dass bereits in der Planungsphase höchste Qualität und (Energie-)Effizienz angestrebt wird. Mit dem Zusatz ECO werden zudem die beiden Themen Gesundheit und Bauökologie berücksichtigt. Dieser Datenbestand enthält die Anzahl zertifizierter Minergie-Gebäude pro Gemeinde (BFS-Nr.) aufgeschlüsselt nach den unterschiedlichen Standards.

---

#### Daten aus der Gebäude- und Wohnungsstatistik GWS des Bundesamts für Statistik (BFS)

Der Ordner [GWS_BFS](https://github.com/ogdtg/data_hackathon_tg_2023/tree/main/GWS_BFS) enthält folgende Datensätze im csv-Format.

**2021_Gebaeude_Energiequelle_Heizung.csv**

Der Datensatz enthält Daten zur Energiequelle, welche für die Heizung von Wohnungen und Häusern verwendet wird. Dabei werden die Zahlen als Anzahl Wohnungen pro Energieträger und pro Gemeinde angegeben.

**2021_Gebaeude_Energiequelle_Warmwasser.csv**

Der Datensatz enthält Daten zur Energiequelle, welche zur Erzeugung von Warmwasser verwendet wird. Dabei werden die Zahlen als Anzahl Wohnungen pro Energieträger und pro Gemeinde angegeben.

**2021_Gebeude_Heizsystem_Warmwasser.csv**

Der Datensatz enthält Daten zur Art des Heizsystems in Wohnungen und Häusern. Dabei werden die Zahlen als Anzahl Wohnung pro Heizsystem, pro Gemeinde angegeben. So kann zum Beispiel ermittelt werden, wie viele Gebäude mit einer Wärmepumpe oder einem thermischen Solarsystem beheizt werden.

Mehr Infos findet ihr [hier](https://statistik.tg.ch/themen-und-daten/bau-und-wohnen/gebaeude-und-wohnungen/energie-und-wasserversorgung.html/5964).

---

### Bevölkerungsdaten

Bevölkerungsdaten der Thurgauer Gemeinden in verschiedenen Aufschlüsselungen finden sich [hier](https://data.tg.ch/explore/?sort=modified&refine.theme=Bev%C3%B6lkerung).

---

### Abstimmungsdaten

Der Ordner [Abstimmungsdaten](https://github.com/ogdtg/data_hackathon_tg_2023/tree/main/Abstimmungsdaten) enthält folgende Datensätze im csv Format.

**Eidg_Abst_Ebene_Gemeinden_ab_2000.csv**

Der Datensatz enthält Daten zum Abstimmungsverhalten innerhalb der Gemeinden für alle eidgenössischen Abstimmungen seit dem Jahr 2000. Im Datensatz enthalten sind dabei Informationen zur Abstimmungsvorlage selbst sowie die absoluten Zahlen der Stimmverteilung innerhalb der Gemeinde. Ausserdem bezeichenen die Variablen `D1E3`,`D2E1`,...,`D3E3` die dem Thema zugeordneten Themen gemäss der Zuordnung von [swissvotes](https://swissvotes.ch/page/dataset).

**Eidg_Abst_Ebene_Gemeinden_ab_2000_Umwelt_Energie_Themen.csv**

Der Datensatz ist ein subset `Eidg_Abst_Ebene_Gemeinden_ab_2000.csv` und enthält nur de Abstimmungsvorlagen, welche sich mit den Themen Energie und/oder Umwelt befassen. Die Struktur des Datensatzes entspricht der von `Eidg_Abst_Ebene_Gemeinden_ab_2000.csv`.

---

### Parteistärken

Auf unserem Datenportal findet ihr nebst den Abstimmungsdaten auch Information zur [Stärke der Parteien an den Grossratswahlen der letzten Jahre](https://data.tg.ch/explore/dataset/sk-stat-9/information/). Hier seht ihr beispielsweise, in welchen Gemeinden die GRÜNEN besonders stark sind.  

---

### Sonstiges

- [Stromtankstellen im Thurgau](https://opendata.swiss/de/dataset/ladestationen-fuer-elektroautos)
- [Nachhaltiges Potenzial der nicht-verholzten Biomassenressourcen für Bioenergie in der Schweiz auf Gemeindeebene](https://opendata.swiss/de/dataset/nachhaltiges-potenzial-der-nicht-verholzten-biomassenressourcen-fur-bioenergie-in-der-schweiz-a)

Sämtliche OGD in der Schweiz und dem Thurgau finden sich auf [opendata.swiss](https://opendata.swiss/de) und/oder [data.tg.ch](https://data.tg.ch/pages/start/).

