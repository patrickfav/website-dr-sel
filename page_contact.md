---
layout: page
title: Kontakt
description: So können Sie mich erreichen
permalink: /kontakt/
order: 3

location:
  - title: Dr. med. Beate Selwicka-Wienerroither
    url: http://www.selwicka-wienerroither.com
    latitude: 48.243617
    longitude: 16.324444
---

## Ordination

{{ site.data.global.contact.address.line1 }}\\
_{{ site.data.global.contact.address.line1a }}_\\
{{ site.data.global.contact.address.line2 }}, {{ site.data.global.contact.address.line3 }}

Tel:  {{ site.data.global.contact.tel | tel_link }}\\
Fax:  {{ site.data.global.contact.fax | tel_link }}\\
E-Mail:	{{ site.email | mailObfuscate }}

<small>**Bitte um telefonische Terminvereinbarung.**\\
_Aufgrund der Gegebenheiten im Haus, ist die Ordination leider nicht
barrierefrei zugänglich._</small>

### Ordinationszeiten

* **{{site.data.global.hours.day1.name}}** {{site.data.global.hours.day1.time}}
* **{{site.data.global.hours.day2.name}}** {{site.data.global.hours.day2.time}}
* **{{site.data.global.hours.day3.name}}** {{site.data.global.hours.day3.time}}
* **{{site.data.global.hours.day4.name}}** {{site.data.global.hours.day4.time}}

Beachten Sie bitte den Annahmeschluss 30 Minuten vor Ende der Ordinationszeiten.

### Anfahrt

_Erreichbar durch Öffentlichen Verkehr:_ 35A (Glanzing), 40A (Döblinger Frhf./F.-Dahn-Str.)\\

{% google_map zoom="16" width="100%" height="40vw" class="google-maps-style" %}
<small>[Navigation über Google Maps](https://goo.gl/maps/AbdcbWtxQzo)</small>

## Hausbesuche

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard 
dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen 
book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. 
It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with 
desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
