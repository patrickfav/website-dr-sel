---
layout: page
title: Kontakt
description: So können Sie mich erreichen
permalink: /kontakt/
order: 3

location:
  - title: Ordination Selwicka-Wienerroither
    url: https://goo.gl/maps/v76HGogqLPr
    latitude: 48.243617
    longitude: 16.324444
---

## Ordination

{{ site.data.global.contact.address.line1 }}\\
{{ site.data.global.contact.address.line1a }}\\
{{ site.data.global.contact.address.line2 }}, {{ site.data.global.contact.address.line3 }}

Tel:  {{ site.data.global.contact.tel | tel_link }}\\
Fax:  {{ site.data.global.contact.fax | tel_link }}\\
Mail: {{ site.email | mail_obfuscate }}

<small>**Bitte um telefonische Terminvereinbarung.**\\
Aufgrund der Gegebenheiten im Haus, ist die Ordination leider nicht
barrierefrei zugänglich.</small>

### Ordinationszeiten

* **{{site.data.global.hours.day1.name}}** {{site.data.global.hours.day1.time}}
* **{{site.data.global.hours.day2.name}}** {{site.data.global.hours.day2.time}}
* **{{site.data.global.hours.day3.name}}** {{site.data.global.hours.day3.time}}
* **{{site.data.global.hours.day4.name}}** {{site.data.global.hours.day4.time}}

<small>Beachten Sie bitte den Annahmeschluss 30 Minuten vor Ende der Ordinationszeiten.</small>


{% if site.data.global.vacation.enabled %}
#### {{ site.data.global.vacation.vacation_title }}

{{ site.data.global.vacation.content }}
{% endif %}

### Anfahrt

Erreichbar durch Öffentlichen Verkehr:
* 35A (Glanzing)
* 40A (Döblinger Frhf./F.-Dahn-Str.)

{% google_map zoom="16" width="100%" height="40vw" class="google-maps-style" %}
<small>{{ 'https://goo.gl/32X5Le' | external_link: 'Navigation über Google Maps' }}</small>


## Hausbesuche

Für ältere Menschen, deren Mobilität eingeschränkt ist, stellt der Arztbesuch oft eine große Herausforderung 
dar, die nur mit Mühe zu bewältigen ist, deshalb führe ich auf Wunsch auch Hausbesuche durch.

Besonders in der Betreuung von Menschen mit akuten und chronischen Erkrankungen ist dies ein wichtiger 
Service, den ich Ihnen deshalb gerne anbiete.

Hausbesuche werden von Montag bis Freitags tagsüber durchgeführt. Wenn möglich melden Sie den Hausbesuch
 morgens zwischen 8 und 9 Uhr unter {{ site.data.global.contact.tel | tel_link }} an.

## Weiterführende Links

* {{ 'http://www.praxisplan.at/5546917116/Selwicka-Wienerroither-Beate/1' | external_link: 'Eintrag auf praxisplan.at der Wiener Ärztekammer' }}
* {{ 'https://www.docfinder.at/arzt/allgemeinmedizin/1190-wien/dr-beate-selwicka-wienerroither-13942_1' | external_link: 'Eintrag auf docfinder.at' }}