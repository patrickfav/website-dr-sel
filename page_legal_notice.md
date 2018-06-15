---
layout: page
title: Impressum
description: Offenlegung gemäß § 25 Mediengesetz
permalink: /impressum/
order: 99
---

### Dienstanbieter und Medieninhaber

**{{ site.data.global.contact.name }}**\\
_{{ site.description }}_

{{ site.data.global.contact.address.line1 }}\\
{{ site.data.global.contact.address.line2 }}\\
{{ site.data.global.contact.address.line3 }}

UID: {{ site.data.global.contact.address.uid }}

Tel:	{{ site.data.global.contact.tel | tel_link}}\\
Fax:	{{ site.data.global.contact.fax | tel_link }}\\
E-Mail:	{{ site.email | mail_obfuscate }}\\
Website:	[{{ site.url }}]({{ site.url }})


#### Zuständige Ärztekammer
{{ 'https://www.aekwien.or.at' | external_link: 'Ärztekammer Wien' }}

#### Berufsbezeichnung
Arzt (verliehen in Österreich)

#### Berufsrechtliche Regelungen
Die Berufsordnung ist zu beziehen, beziehungsweise einzusehen bei der zuständigen {{ 'http://www.aekwien.or.at' | external_link: 'Ärztekammer' }}

#### Konzept, ScreenDesign, Inhalte
{{ 'https://github.com/patrickfav' | external_link: 'Patrick Favre-Bulle' }}


### Haftungsausschluss

####  Inhalt des Onlineangebotes
Der Autor übernimmt keinerlei Gewähr für die Aktualität, Korrektheit, Vollständigkeit oder Qualität der bereitgestellten Informationen. Haftungsansprüche gegen den Autor, welche sich auf Schäden materieller oder ideeller Art beziehen, die durch die Nutzung oder Nichtnutzung der dargebotenen Informationen bzw. durch die Nutzung fehlerhafter und unvollständiger Informationen verursacht wurden, sind grundsätzlich ausgeschlossen, sofern seitens des Autors kein nachweislich vorsätzliches oder grob fahrlässiges Verschulden vorliegt. Alle Angebote sind freibleibend und unverbindlich. Der Autor behält es sich ausdrücklich vor, Teile der Seiten oder das gesamte Angebot ohne gesonderte Ankündigung zu verändern, zu ergänzen, zu löschen oder die Veröffentlichung zeitweise oder endgültig einzustellen.

####  Verweise und Links
Bei direkten oder indirekten Verweisen auf fremde Internetseiten (Links), die außerhalb des Verantwortungsbereiches des Autors liegen, würde eine Haftungsverpflichtung ausschließlich in dem Fall in Kraft treten, in dem der Autor von den Inhalten Kenntnis hat und es ihm technisch möglich und zumutbar wäre, die Nutzung im Falle rechtswidriger Inhalte zu verhindern. Der Autor erklärt hiermit ausdrücklich, dass zum Zeitpunkt der Linksetzung keine illegalen Inhalte auf den zu verlinkenden Seiten erkennbar waren. Auf die aktuelle und zukünftige Gestaltung, die Inhalte oder die Urheberschaft der gelinkten/verknüpften Seiten hat der Autor keinerlei Einfluss. Deshalb distanziert er sich hiermit ausdrücklich von allen Inhalten aller gelinkten/verknüpften Seiten, die nach der Linksetzung verändert wurden. Diese Feststellung gilt für alle innerhalb des eigenen Internetangebotes gesetzten Links und Verweise sowie für Fremdeinträge in vom Autor eingerichtete Gästebücher, Diskussionsforen und Mailinglisten. Für illegale, fehlerhafte oder unvollständige Inhalte und insbesondere für Schäden, die aus der Nutzung oder Nichtnutzung solcherart dargebotener Informationen entstehen, haftet allein der Anbieter der Seite, auf welche verwiesen wurde, nicht derjenige, der über Links auf die jeweilige Veröffentlichung lediglich verweist.

#### Urheber- und Kennzeichenrecht
Der Autor ist bestrebt, in allen Publikationen die Urheberrechte der verwendeten Grafiken, Tondokumente, Videosequenzen und Texte zu beachten, von ihm selbst erstellte Grafiken, Tondokumente, Videosequenzen und Texte zu nutzen oder auf lizenzfreie Grafiken, Tondokumente, Videosequenzen und Texte zurückzugreifen. Alle innerhalb des Internetangebotes genannten und ggf. durch Dritte geschützten Marken- und Warenzeichen unterliegen uneingeschränkt den Bestimmungen des jeweils gültigen Kennzeichenrechts und den Besitzrechten der jeweiligen eingetragenen Eigentümer. Allein aufgrund der bloßen Nennung ist nicht der Schluss zu ziehen, dass Markenzeichen nicht durch Rechte Dritter geschützt sind! Das Copyright für veröffentlichte, vom Autor selbst erstellte Objekte bleibt allein beim Autor der Seiten. Eine Vervielfältigung oder Verwendung solcher Grafiken, Tondokumente, Videosequenzen und Texte in anderen elektronischen oder gedruckten Publikationen ist ohne ausdrückliche Zustimmung des Autors nicht gestattet.

#### Rechtswirksamkeit dieses Haftungsausschlusses
Dieser Haftungsausschluss ist als Teil des Internetangebotes zu betrachten, von dem aus auf diese Seite verwiesen wurde. Sofern Teile oder einzelne Formulierungen dieses Textes der geltenden Rechtslage nicht, nicht mehr oder nicht vollständig entsprechen sollten, bleiben die übrigen Teile des Dokumentes in ihrem Inhalt und ihrer Gültigkeit davon unberührt.

#### Online-Streitbeilegung
Die Europäische Kommission stellt eine Plattform zur Online-Streitbeilegung (OS) bereit, die Sie unter {{ 'http://ec.europa.eu/odr/' | external_link: 'ec.europa.eu/odr/' }} finden.


-----------

<small>Die Website mit Version <a href="https://github.com/patrickfav/website-dr-sel/releases/tag/{% project_version %}" rel="noopener" class="external">{% project_version %}</a>
wurde am _{{ site.time | date_to_rfc822 }}_ mit {{ 'https://jekyllrb.com' | external_link: 'Jekyll' }} kompiliert.</small>
