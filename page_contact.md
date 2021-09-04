---
layout: page
title: Kontakt
description: So können Sie mich erreichen
permalink: /kontakt/
internal_id: contact
order: 3

location:
  - title: Ordination Selwicka-Wienerroither
    url: https://goo.gl/maps/v76HGogqLPr
    latitude: 48.243617
    longitude: 16.324444
---

{% if site.data.global.covid.enabled %}
## Hinweis zu COVID-19
**Bitte beachten Sie die [aktuellen Einschränkungen in der Ordination](/#covid19).**
{% endif %}

## Ordination

{{ site.data.global.contact.address.line1 }}\\
{{ site.data.global.contact.address.line1a }}\\
{{ site.data.global.contact.address.line2 }}, {{ site.data.global.contact.address.line3 }}

Tel:  {{ site.data.global.contact.tel | tel_link }}\\
Fax:  {{ site.data.global.contact.fax | tel_link }}

<small>**Bitte um telefonische Terminvereinbarung.**\\
Aufgrund der Gegebenheiten im Haus, ist die Ordination leider nicht
barrierefrei zugänglich.</small>

{% include sickness.html %}

### Ordinationszeiten

| Tag        | Öffungszeiten                                                                                      |
|------------|----------------------------------------------------------------------------------------------------|
| Montag     | {{ site.data.global.hours.spec.monday.start }} - {{ site.data.global.hours.spec.monday.end }}      |
| Dienstag   | {{ site.data.global.hours.spec.tuesday.start }} - {{ site.data.global.hours.spec.tuesday.end }}    |
| Mittwoch   | {{ site.data.global.hours.spec.wednesday.start }} - {{ site.data.global.hours.spec.wednesday.end }}|
| Donnerstag | {{ site.data.global.hours.spec.thursday.start }} - {{ site.data.global.hours.spec.thursday.end }}  |
| Freitag    | {{ site.data.global.hours.spec.friday.start }} - {{ site.data.global.hours.spec.friday.end }}      |

<small>Beachten Sie bitte den Annahmeschluss 30 Minuten vor Ende der Ordinationszeiten.</small>

{% include vacation.html %}

### Anfahrt

Mit dem Auto erwartetet Sie eine Vielzahl an öffentlichen Parkplätzen ohne
die Einschränkung einer Kurzparkzone. Außerdem ist die Praxis erreichbar
durch folgende öffentliches Verkehrsmittel:


| Linie | Haltestelle                  | Gehzeit |
|-------|------------------------------|---------|
| 35A   | Glanzig                      | 3 min   |
| 40A   | Döblinger Frhf./F.-Dahn-Str. | 9 min   |

{% google_map zoom="16" width="100%" height="40vw" class="google-maps-style" %}

<small>{{ "https://goo.gl/maps/zQK5FWzYLCK2" | external_link: 'Navigation über Google Maps' }}</small>

## Hausbesuche

Für ältere Menschen, deren Mobilität eingeschränkt ist, stellt der Arztbesuch oft eine große Herausforderung 
dar, die nur mit Mühe zu bewältigen ist, deshalb führe ich auf Wunsch auch Hausbesuche durch. Besonders in der Betreuung von Menschen mit akuten und chronischen Erkrankungen ist dies ein wichtiger
Service, den ich Ihnen deshalb gerne anbiete.

Hausbesuche werden von Montag bis Freitags tagsüber nach telefonische Vereinbarung während der Ordinationszeit unter {{ site.data.global.contact.tel | tel_link }} durchgeführt. Nächtens, am Wochende sowie an
Feiertagen steht Ihnen der {{ "http://www.aekwien.at/aerztefunkdienst-141" | external_link: 'Ärzte Notdienst'}} zur Verfügung.


## Weiterführende Links

* {{ 'http://www.praxisplan.at/5546917116/Selwicka-Wienerroither-Beate/1' | external_link: 'Eintrag auf praxisplan.at der Wiener Ärztekammer' }}
* {{ 'https://www.docfinder.at/arzt/allgemeinmedizin/1190-wien/dr-beate-selwicka-wienerroither-13942_1' | external_link: 'Eintrag auf docfinder.at' }}
