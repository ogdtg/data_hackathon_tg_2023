# Hackathon Thurgau: Jugendchallenge
## Energiecheck: Wie steht deine Gemeinde da?

**Um was geht es**

Energie, Energie und nochmal Energie. Diesem Thema kann man derzeit kaum aus dem Weg gehen. Doch wie sieht es eigentlich bei euch vor der Haustür aus? Welche Gemeinde könnte unter einer drohenden Energieknappheit besonders leiden? Wo wird am meisten Energie verbraucht und wer ist in puncto erneuerbare Energien ganz vorne? Diese und andere Fragen sollen in unserer Challenge beantwortet werden

**Challenge**

Die Thurgauer Gemeinden liefern regelmässig Daten zur Energieerzeugung und zum Verbrauch. Doch ist es für den Laien relativ schwierig irgendwelche Schlüsse aus staubtrockenen Tabellen zu ziehen. In dieser Challenge soll es deshalb darum gehen die vorliegenden Daten originell zu visualisieren. Ziel soll es sein, dass jede/r Bürger/in in der Lage ist, zu erkennen, wo die eigene Gemeinde im Thurgauer Vergleich steht. Dabei sollen verschiedene Faktoren aus dem Bereich Energie miteinbezogen werden. Bei der Visualisierung könnt ihr eurer Kreativität freien Lauf lassen.

**Was stellen wir euch dafür zur Verfügung**

Wir von der OGD-Koordinationsstelle des Kantons Thurgau stellen verschiedene energiebezogene- Daten über unseren Datenkatalog zur Verfügung und zeigen euch, wo ihr weitere Daten und Infos findet. Solltet ihr Verständnisfragen zu den Daten selbst haben oder Unterstützung bei der Visualisierung oder Datenanalyse benötigen, stehen wir euch gern mit Rat und Tat zur Seite.

## Die Daten

### Energiedaten

#### Energieverbrauch nach Energieträger 

#### Erneuerbare Elektrizitätsproduktion nach Energieträgern

#### Energiereporter

**solarenergiepotential_tg_gemeinden.csv**

Die interaktive Anwendung [sonnendach.ch](https://www.uvek-gis.admin.ch/BFE/sonnendach/?lang=de) informiert über die Eignung von Hausdächern für die Solarenergienutzung. Auf einfache Weise wird vermittelt, wieviel Solarstrom oder Solarwärme mit einem Hausdach produziert werden könnte. Für die Gemeinden berechnet das Bundesamt für Energie BFE auf der Grundlage der Solarpotenziale der einzelnen Hausdächer, wie gross die Potenziale für Solarstrom und Solarwärme für das gesamte Gemeindegebiet sind. Zwei Szenarien werden berechnet: Im ersten Szenario werden alle Dächer nur für Solarstrom verwendet. Im zweiten Szenario wird pro Haus das beste Dachstück für Solarwärme und der Rest für Solarstrom verwendet.

**energyreporter_municipality.csv**

Der Energie Reporter zeigt die Entwicklungen der Energiewende in den 
Gemeinden des Thurgaus. Der Datensatz zeigt den aktuellen Fortschritt in den 
ausgewählten Bereichen Elektroautos, Produktion Solarstrom und erneuerbar 
heizen für jede Gemeinde.

Beschreibung Attribute
---------------------------------------------------------------------------
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


Indikator: Elektroautos
---------------------------------------------------------------------------
Der Wert Elektroautos zeigt auf, wie gross der Anteil elektrisch 
angetriebener Fahrzeuge im Strassenverkehr in Prozent ist.

Für die Erhebung werden alle Personenwagen und Lieferwagen berücksichtigt, 
welche sich aktuell im Verkehr befinden. Die Fahrzeuge werden über die 
Postleitzahl und Ortsbezeichnung der Halteradressen einer Gemeinde zugeordnet.

Als Elektroautos gelten alle Fahrzeuge mit einem elektrischen Antrieb, 
einem elektrischen Antrieb mit Range Extender oder einem 
Wasserstoff/elektrischen Antrieb. Als Personenwagen sind Fahrzeuge 
klassifiziert, welche dem Personen-Transport dienen und über höchstens 
neun Sitzplätze inklusive Fahrerin oder Fahrer verfügen.
Lieferwagen sind für den Sachentransport konzipiert und haben höchstens ein 
Gesamtgewicht von 3.5 Tonnen.

Die Daten werden monatlich aktualisiert.

Datenquellen: ASTRA (https://www.astra.admin.ch/astra/de/home.html), 
swisstopo (https://www.swisstopo.admin.ch/)


Indikator: Produktion Solarstrom
---------------------------------------------------------------------------
Der Wert Produktion Solarstrom zeigt auf, wie viel Prozent des 
realisierbaren Solar-Potenzials auf Dachflächen bereits für die 
Stromproduktion mit Photovoltaik (PV) Anlagen genutzt wird.

Der Wert gibt die installierte PV-Leistung im Verhältnis zum wirtschaftlich 
sowie technisch realisierbaren Potenzial auf Dachflächen in Prozent an.

Die installierte Leistung setzt sich aus allen bestehenden PV-Anlagen 
zusammen, die im von der Pronovo AG betriebenen schweizerischen 
Herkunftsnachweissystem registriert sind.
Die grosse Mehrheit aller PV-Anlagen in der Schweiz ist im 
Herkunftsnachweissystem registriert.
Über nicht registrierte Anlagen kann keine Aussage getroffen werden.
Die PV-Anlagen werden anhand der im Herkunftsnachweissystem registrierten 
Adresse einer Gemeinde zugewiesen.

Für die Berechnung des wirtschaftlich sowie technisch realisierbaren 
Potenzials werden die für Solarstrom geeigneten Dachflächen aller Gebäude 
innerhalb eines Gemeindegebiets verwendet.
Fassadenflächen werden nicht berücksichtigt. Gebäude, die in mehr als einem 
Gemeindegebiet liegen, werden anhand der im Gebäude liegenden Adressen den 
Gemeinden zugeordnet.
Geeignete Dachflächen sind grösser als 10 Quadratmeter und für die 
Solarstrom-Produktion mindestens "gut" geeignet, das heisst sie verfügen 
über eine mittlere jährliche Sonneneinstrahlung von über 1’000 Kilowattstunden 
pro Quadratmeter. Für die Dachflächen wird ein Belegungsgrad von 70% angenommen 
(Anteil der Dachfläche, welche mit PV-Modulen belegt werden kann). Es wird 
weiter ein Modulwirkungsgrad von 17% für die Produktion von PV-Strom verwendet.

Der aktuelle Datensatz mit der Endung `_latest` enthält den aktuellen Fortschritt aller Gemeinden im Thurgau im CSV-Format.

Der historisierte Datensatz mit der Endung `_historized` enthält monatliche Zeitschnitte seit dem Bestehen von Energie Reporter (1. März 2021) mit dem Fortschritt aller Gemeinden im CSV-Format.

### Wohnungsdaten

### Bevölkerungszahlen

### Energiereporter

### Biomasseportal

### Abstimmungsdaten

Der Ordner `Abstimmungsdaten` enthält zwei Datensätze im csv Format.

**Eidg_Abst_Ebene_Gemeinden_ab_2000.csv**

Der Datensatz enthält Daten zum Abstimmungsverhalten innerhalb der Gemeinden für alle eidgenössischen Abstimmungen seit dem Jahr 2000. Im Datensatz enthalten sind dabei Informationen zur Abstimmungsvorlage selbst sowie die absoluten Zahlen der Stimmverteilung innerhalb der Gemeinde. Ausserdem bezeichenen die Variablen `D1E3`,`D2E1`,...,`D3E3` die dem Thema zugeordneten Themen. Datenquelle hierfür ist [swissvotes](https://swissvotes.ch/page/dataset).

**Eidg_Abst_Ebene_Gemeinden_ab_2000_Umwelt_Energie_Themen.csv**

Der Datensatz ist ein subset `Eidg_Abst_Ebene_Gemeinden_ab_2000.csv` und enthält nur de Abstimmungsvorlagen, welche sich mit den Themen Energie und/oder Umwelt befassen. Die Struktur des Datensatzes entspricht der von `Eidg_Abst_Ebene_Gemeinden_ab_2000.csv`.
