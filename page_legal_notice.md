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
E-Mail:	{{ site.email | mailObfuscate }}\\
Website:	[{{ site.url }}]({{ site.url }})

##### Zuständige Ärztekammer
Ärztekammer Wien [www.aekwien.or.at](http://www.aekwien.at/)

##### Zuständige Kassenärztliche Vereinigung
Wien [www.gkkwien.at](https://www.wgkk.at)

##### Berufsbezeichnung
Arzt (verliehen in Österreich)

##### Berufsrechtliche Regelungen
Die Berufsordnung ist zu beziehen, beziehungsweise einzusehen bei der zuständigen Ärztekammer [www.aekwien.or.at](http://www.aekwien.at/)

##### Redaktionell verantwortlich
{{ site.data.global.contact.name }}

##### Konzept, ScreenDesign, Inhalte
[Patrick Favre-Bulle](https://github.com/patrickfav)

<small>Die Website mit Version [{% project_version %}](https://github.com/patrickfav/website-dr-sel/releases/tag/{% project_version %}) 
wurde am _{{ site.time | date_to_rfc822 }}_ mit [Jekyll](https://jekyllrb.com) kompiliert.</small>
