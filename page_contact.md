---
layout: page
title: Kontakt
description: So können Sie mich erreichen
permalink: /kontakt
order: 3

location:
  - title: Dr. med. Beate Selwicka-Wienerroither
    url: http://www.selwicka-wienerroither.com
    latitude: 48.243617
    longitude: 16.324444
---

## Ordination

{{ site.contact.name }}\\
{{ site.contact.address.line1 }}\\
_{{ site.contact.address.line1a }}_\\
{{ site.contact.address.line3 }}

Telefon:   {{ site.contact.tel }}\\
Fax:	{{ site.contact.fax }}\\
E-Mail:	[{{ site.email }}](mailto:{{ site.email }})

_Aufgrund der Gegebenheiten im Haus, ist die Ordination leider nicht
barrierefrei zugänglich._

## Ordinationszeiten

* **{{site.hours.day1.name}}** {{site.hours.day1.time}}
* **{{site.hours.day2.name}}** {{site.hours.day2.time}}
* **{{site.hours.day3.name}}** {{site.hours.day3.time}}
* **{{site.hours.day4.name}}** {{site.hours.day4.time}}

Beachten Sie bitte den Annahmeschluss 30 Minuten vor Ende der Ordinationszeiten.

## Anfahrt

_Erreichbar durch Öffentlichen Verkehr:_ 35A (Glanzing), 40A (Döblinger Frhf./F.-Dahn-Str.)

{% google_map zoom="16" width="100%" height="40vw" class="google-maps-style" %}

[Link auf Google Maps](https://goo.gl/maps/AbdcbWtxQzo)