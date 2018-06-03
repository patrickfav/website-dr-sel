---
layout: page
title: Impressum
description: Offenlegung gemäß § 25 Mediengesetz
permalink: /impressum/
order: 99
---

### {{ site.data.global.contact.name }}

_{{ site.description }}_

{{ site.data.global.contact.address.line1 }}\\
{{ site.data.global.contact.address.line2 }}\\
{{ site.data.global.contact.address.line3 }}

Tel:	{{ site.data.global.contact.tel | tel_link}}\\
Fax:	{{ site.data.global.contact.fax | tel_link }}\\
E-Mail:	{{ site.email | mail_obfuscate }}\\
Website:	[{{ site.url }}]({{ site.url }})

##### Zuständige Ärztekammer
Ärztekammer Wien {{ 'https://www.aekwien.or.at' | external_link: 'www.aekwien.or.at' }}

##### Zuständige Kassenärztliche Vereinigung
Wien {{ 'http://www.wgkk.at' | external_link: 'www.wgkk.at' }}

##### Berufsbezeichnung
Arzt (verliehen in Österreich)

##### Berufsrechtliche Regelungen
Die Berufsordnung ist zu beziehen, beziehungsweise einzusehen bei der zuständigen Ärztekammer {{ 'http://www.aekwien.or.at' | external_link: 'www.aekwien.or.at' }}

##### Redaktionell verantwortlich
{{ site.data.global.contact.name }}

##### Konzept, ScreenDesign, Inhalte
{{ 'https://github.com/patrickfav' | external_link: 'Patrick Favre-Bulle' }}

<small>Die Website mit Version [{% project_version %}](https://github.com/patrickfav/website-dr-sel/releases/tag/{% project_version %}) 
wurde am _{{ site.time | date_to_rfc822 }}_ mit {{ 'https://jekyllrb.com' | external_link: 'Jekyll' }} kompiliert.</small>
