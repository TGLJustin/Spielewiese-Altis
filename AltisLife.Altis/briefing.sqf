waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["serverrules","Allgemeine Regeln"];
player createDiarySubject ["rules","Weiterführende Regeln"];
player createDiarySubject ["fightrules","Kampfregeln"];
player createDiarySubject ["adac","ADAC/MRD"];
player createDiarySubject ["safezones","Sichere Zonen (No Killing)"];
player createDiarySubject ["streets","Straßeverkehrsregeln"];
player createDiarySubject ["illegalitems","Illegale Aktivitaeten"];


player createDiaryRecord ["adac",
	[
	"ADAC", 
"
- Abschleppen durch ADAC wird in Rechnung gestellt (10.000$).<br/>
- Das Reparieren von Fahrzeugen ist kostenlos<br/>
- Der ADAC ist eine nicht angreifbare Fraktion!</br>
- Der ADAC darf Fahrzeuge beschlagnahmen (Verwahrung bis Restart), sofern ein Reparieren nicht möglich ist.</br>
"
	]
];
player createDiaryRecord ["adac",
	[
	"Medizinischer Rettungsdienst (Medics)", 
"
Der MRD ist eine nicht angreifbare Fraktion!<br/>
Es folgen die Regeln für den Umgang mit dem MRD<br/>
<u>Punkt 1: Respawn nach Request.</u><br/><br/>
Nach dem Request eines Medics respawnen zieht folgende Strafen nach sich:<br/>
1: Verwarnung und 50k Strafe an den ausgerückten Sanitäter.<br/>
2: Kick bei wiederholten Medic-Request-Abuse (MRA)<br/>
3: (24h) Ban bei permanentem MRA<br/><br/>

Verhaltensregeln:<br/>
- Der RD wird Verbrecher nur bei Eigengefährdung an die Polizei melden! (Ärztliche Schweigepflicht)<br/>
- Jeder Bürger Altis (Zivilisten, Polizisten und Rebellen) werden gleichermaßen behandelt.<br/>
- Mitarbeiter des RD werden sich jederzeit professionell gegenüber dem Patienten verhalten.<br/><br/>

Als Tot gilt jeder, der den MRD nicht anfordert (Request drücken)<br/>
"
	]
];
player createDiaryRecord ["serverrules",
	[
"Allgemeines", 
"
Roleplay<br/><br/>

1: Dies ist ein Rollenspielserver, verhalte dich so<br/>
2: Ein toter Hamster als Grund für einen Kampf, ist kein Grund<br/>
3: Arschloch sein kann Roleplay sein, ist aber schwer - bedenke dies!<br/>
"
	]
];
player createDiaryRecord ["serverrules",
	[
"Spezifisch", 
"
Regeln<br/><br/>

1. Zivilisten haben sich grundlegend an die Anweisungen der Polizei zu halten.<br/>
2. Weisen Sie den Polizisten ggf. darauf hin, dass Sie Waffen bei sich fuehren.<br/>
3. Tragen Zivilisten Waffen bei sich, haben sie diese sofort zu senken oder wegzustecken.<br/>
4. An einem Checkpoint dürfen Polizisten die Zivilisten ohne Angabe von Gründen durchsuchen.<br/>
5. Nach der Durchsuchung koennen die Zivilisten in ihr Fahrzeug steigen und wegfahren, solange nichts gegen sie vorliegt.<br/>
6. Sollte etwas Illegales gefunden werden, wird die Person festgenommen und, abhängig von dem begangenen Verbrechen, zu einer Geld oder Haftstrafe verurteilt.<br/><br/>
7. Der Rettungsdienst sowie der ADAC dürfen kein Ziel von Überfällen sein!</br> 
8: Drohnungen gegen Polizisten gelten als Straftat.</br>
"
	]
];
player createDiaryRecord ["serverrules",
	[
	"Exploits", 
"
Exploits:<br/><br/>

1. Das Entkommen aus dem Knast mit anderen Methoden als die Kaution zu zahlen oder per Helikopter zu fliehen.<br/>
2. Sich selbst umzubringen, um aus schwierigen Situationen wie zum Beispiel einer Festnahme, dem Knast etc. zu entkommen.<br/>
3. Das Veruntreuen von grossen Geldsummen. Sollte dir jemand direkt am Anfang des Spiels grosse Summen Geld schicken, melde dies sofort einem Admin, andernfalls kannst du gebannt werden.<br/>
4. Die Benutzung von gehackten Items. Sollte ein Hacker den Server betreten und Items spawnen, nutze diese nicht, sondern melde es sofort einem Admin.<br/>
5. Der Missbrauch von Bugs. Sollte man dich beim Ausnutzen von Bugs erwischen, ist dies ein Banngrund.<br/>
6. Dauerhaftes RDM. Wenn du dauerhaft Random Deathmatch betreibst, ist dies ein Banngrund.<br/><br/>
"
	]
];
player createDiaryRecord ["serverrules",
	[
"Banngründe", 
"
Betrachtet dies als eure einzige Warnung für folgende Fälle.<br/><br/>

1. Hacking<br/>
2. Cheating<br/>
3. Exploiting (unter 'Exploits')<br/>
4. Drei Kicks führen auch zu einem Ban.<br/><br/>
5. Ein bestehender VAC Ban führt zu sofortigem Ausschluss (Automatisiert)<br/>
6. Das Überfallen von Spielern, während man sich als Polizist ausgibt.<br/>
7. Permanente Kopfgeldaktionen auf ein und den selben Spieler.<br/>
8. Permanentes Mobbing, sexuelle Nötigung usw.<br/>
9. Falschinformation/Einseitiges Informieren der Admins oder Supporter<br/>
"
	]
];
player createDiaryRecord ["serverrules",
	[
	"Kommunikationsregeln", 
"
Die folgenden Taten können zu einem Bann führen, abhängig von der Sicht der Admins.<br/><br/>

1. Der Sidechat darf nur für schriftliche Kommunikation benutzt werden.<br/>
2. Das Spammen in einem beliebigen Chat-Kanal resultiert in einem Bann.<br/>
3. Teamspeak-Kanäle sind aus einem Grund da, Polizisten, ADAC od. MRD-Mitarbeiter müssen sich jederzeit in ihren entsprechenden Channeln aufhalten.<br/>
4. Zivilisten haben in Cop-Channels nichts zu suchen! Jeder Zivilist, der einem Cop Kanal joined, wird sofort aus dem Kanal entfernt. Wiederholungstäter können gebannt werden.<br/>
5. Für Benachrichtigung des ADAC oder MRD gibt es entsprechend offene Channels, damit sich Zivilisten dort aufhalten können.<br/><br/>
"
	]
];
player createDiaryRecord ["serverrules",
	[
"Random Deathmatching (RDM)", 
"
Die Folgenden Taten können zu einem Bann führen, abhängig von der Sicht der Admins.<br/><br/>

1. Das Töten eines Mitspielers ohne Roleplay Grund.<br/>
2. Cops und Zivilisten dürfen nur in Verbindung mit einem begangenen Verbrechen aufeinander schiessen.<br/>
3. Wenn du im Kreuzfeuer eines Gefechts erschossen wirst, zählt dies nicht als RDM.<br/>
4. Jemanden aus Selbstschutzgründen zu töten, zählt nicht als RDM (Notwehr).<br/>
5. Einen Spieler zu erschiessen ohne ihm genügend Zeit zu geben, deinen Anweisungen zu folgen, zählt als RDM.<br/><br/>

Jeder Fall wird von einem oder mehreren Admins beurteilt.<br/><br/>
"
	]
];
player createDiaryRecord["fightrules",
	[
	"Kampfregeln",
"
1: Kämpfe, die in Kavala oder Pyrgos starten sind verboten und werden mit KICK oder BAN bestraft!<br/><br/>
1.1: Grund: Dies sind die Orte an denen neue Spieler spawnen, die sollt ihr nicht direkt erschrecken<br/>
1.2: Eine Kampfverlagerung nach Kavala wird geduldet, wenn sie RP Technich einwandfrei ist (KEINE HAMSTER)<br/>
2: Angriffe auf (Polizei)HQs oder Bases zeugen nicht von taktischer Finesse, sondern sind Selbstmord!<br/><br/>
2.2: Grund: Jemanden aus dem Polizei HQ zu befreien und dabei 2 Mitglieder zu verlieren ist kein gutes RP.<br/>
2.3: Grund: Angriffe auf Gang-HQs sind immer zum Scheitern verurteilt. Seid clever und wartet bis sie rauskommen.<br/>
2.4: Grund: Gang-HQs sind erklärte Savezones, ausser der Kampf verlagert sich wärend einer Aktion da hin. <br/>
3: Warnschüße gelten als BESCHUSS!<br/>
4: Das absichtliche Zerstören von Fahrzeugen ist verboten.</br>
5: Bei Verfolgungsjagden mit der Polizei ist das Einparken des Fahrzeuges, um illegale Dinge verschwinden zu lassen, verboten.<br/></br>
"
	]
];
player createDiaryRecord["fightrules",
	[
	"Polizei vs. Gang",
"
1: Angriffe auf Polizei HQs sind nur authorisiert, um eine dort festgesetzte Person zu befreien!<br/>
2: Die Polizei versucht den Kampf immer zu vermeiden, schießt ihr jedoch Scharf auf die Polizei, MÜSST ihr mit entsprechender Reaktion rechnen.<br/>
3: Warnschüße gelten als BESCHUSS!<br/>
4: Verhandelt und benehmt euch als würdet ihr am Leben hängen!<br/>
"
	]
];
player createDiaryRecord["fightrules",
	[
	"Luftkampf",
"
1: Initiale Angriffe auf Bodenziele sind verboten! <br/><br/>
2: Die Hubschrauber dienen nur zur Luftsicherung!<br/>
3: Verteidigung gegen Beschuss ist erlaubt. Danach muss abgedreht werden!<br/>
4: Warnschüße gelten als BESCHUSS!<br/>
5: Darf nicht als Overwatch eingesetzt werden.<br/>
"
	]
];
player createDiaryRecord ["fightrules",
[
	"Zentralbank",
"
1.  Die Zentralbank ist ein gesperrtes Gebiet für Zivilisten und darf nicht ohne Genehmigung betreten werden. Tun sie dies doch, werden sie entfernt. Bei wiederholtem Vergehen werden Zivilisten verhaftet.<br/>
2.  Der Bereich der Zentralbank ist eine strikte Flugverbotszone!<br/>
3.  Wird die Zentralbank ausgeraubt, ist es Pflicht jedes verfügbaren Polizisten zu versuchen, den Raub zu stoppen. Sollten weniger als 5 Polizisten online sein, müssen diese nicht eingreifen.<br/>
4.  Die eingeteilten Polizisten sollten sich sofort zur Zentralbank begeben, kleine Verbrechen können in diesem Fall ignoriert (aber später noch geahndet) werden.<br/>
5.  Waffeneinsatz ist gestattet, allerdings sollte jede Moeglichkeit sie lebend gefangen zu nehmen zuerst versucht werden.<br/>
6.  Die Polizei darf nicht blind in die Bank feuern.<br/>
7.  Die Polizei sollte Zivilisten in der Bank evakuieren.<br/>
8.  Jeder Zivilist, der sich in unmittelbarer Umgebung des Bankgelaendes aufhällt, gilt wahrend eins Bankueberfalls als potentieller Komplize der Bankräuber und wird festgesetzt/gesichert.<br/>
9.  Im Rahmen eines Banküberfalls gilt die Respawnregel nicht für die Polizei.<br/>
10. Cops dürfen, sollten sie bei einem Banküberfall sterben, EIN MAL respawnen und erneut am Bankueberfall teilnehmen.<br/>
"
	]
];

player createDiaryRecord ["fightrules",
[
	"Illegale Gebiete", 
	"
1. Die Rebellengebiete befinden sich außerhalb der Polizei-Zuständigkeit, jedoch darf dort in min. Squad-Größe (4 Mann) operiert werden<br/>
2. Cops dürfen illegale (rot markierte) Gebiete nicht ohne einen Raid betreten. Patrouillen in diesem Gebiet sind untersagt!<br/>
3. Einem Polizist ist es unter keinen Umständen erlaubt, ein illegales Gebiet zu becampen. (Ausnahme sind Grenzposten an den Rebellengebieten)<br/>
4. Polizisten dürfen mobile Checkpoints nicht naeher als 1200 Meter an einem illegalen Ort (Drugfields, Drugprocessings) aufbauen.<br/>
5. Polizisten dürfen illegale Verarbeitungsstätten oder Händler für die Dauer von 30 Minuten becampem.<br/>
6. Polizisten dürfen kein Dauercamp bei den im Punkt 5 genannten Punkten einrichten.<br/>
"
	]
];
player createDiaryRecord["safezones",
[
"Safe Zones",
"
Das absichtliche Sprengen von Fahrzeugen, Raub oder das Toeten anderer Spieler in oder um die folgenden Gebiete wird mit einem Bann bestraft.<br/><br/>

Im Umkreis von 50m:<br/>
- ATM<br/>
- Waffenladen</br>
Kavala und PYRGOS!<br/>
Laufendes RP wird nicht durch Safezones unterbrochen, d.h. wurde es davor gestartet, gilt die Safezone-Regelung nicht für die Beteiligten!<br/>
"
	]
];
player createDiaryRecord ["streets",
[
"Geschwindigkeitsbegrenzung", 
	"
Folgende Geschwindigkeitsbegrenzungen gelten in ganz Altis:<br/><br/>
Marktplatz: 30km/h<br/>
Innerorts: 50km/h<br/>
Ausserorts: 100km/h<br/>
Highway: 130km/h<br/>
"
	]
];
player createDiaryRecord ["rules",
[
"Waffen", 
"
Weitergabe von offizieller Polizeiausrüstung an Zivilisten wird mit einer Suspendierung geahndet!<br/><br/>

Legale Waffen für Zivilisten sind:<br/>
1. 4-five<br/>
2. Rook<br/>
3. ACP-C2<br/>
4. SDAR 9mm<br/>
6. PDW2000<br/><br/>

Jede andere Waffe ist illegal.<br/><br/>

1. Zivilisten ist es nicht erlaubt, innerhalb einer Stadt eine Waffe offen zu tragen.<br/>
2. Zivilisten können ausserhalb von Städten legale Waffen tragen, müssen jedoch nach Aufforderung dem Polizisten den Waffenschein zeigen.<br/><br/>
"
	]
];
player createDiaryRecord ["rules",
[
"Geiselnahmen", 
"
Wir verhandeln nicht mit Terroristen.
"
	]
];
player createDiaryRecord ["rules",
[
"Nicht tödliche Gewalt",
"
Zurzeit ist der Taser die einzige Form nicht tödlicher Gewalt.<br/><br/>

1. Der Taser soll dazu genutzt werden, Zivilisten ruhigszustellen oder zu verhaften, die sich Anweisungen (mehrfach) widersetzt haben.<br/>
2. Das unangebrachte Feuern des Tasers führt zu einer Suspendierung.<br/>
3. Benutze den Taser nur um das Gesetz zu wahren, nicht um anderen deinen Willen aufzuzwingen.<br/><br/>
"
	]
];
player createDiaryRecord ["rules",
[
"Bußgeldkatalog",
"
<b>Bußgeldkatalog</b><br/>
1. Bußgelder müssen den Umständen angepasst werden und es dürfen beispielsweise keine 100K für eine Geschwindigkeitsübertretung ausgestellt werden.<br/>
2. Verweigerung der Zahlung eines Bußgeldes, kann zur Gefängnisstrafe führen.<br/>
3. Bei Unsicherheit über den Preis eines Tickets, wird ein ranghöherer Polizist gefragt bzw hinzugezogen.<br/>
4. Die Bußgelder sind identisch mit denen des Bußgeldkatalogs auf altis-for-player.de und genau so angeordnet.

<b>§1 Verkehrsdelikte(Land)</b><br/>
Fahren auf der falschen Fahrbahn: 	 10.000$<br/>
Falschparken: 						 15.000$<br/>
Führen eines illegalen Fahrzeugs: 	200.000$<br/>
Fahren ohne Führerschein: 			 10.000$<br/>
Fahren ohne LKW-Führerschein: 		 20.000$<br/>
Fahren ohne Licht: 					 12.000$<br/>
Kart fahren bei Nacht: 				 10.000$<br/>
Kart fahren außerhalb der Kartbahn:   8.000$<br/>
Checkpoint-Beschädigung: 			250.000$<br/>
Checkpoint-Umgehung: 				100.000$<br/>
Geschwindigkeitsübertretung:<br/>
10-20 km/h:  1.000$<br/>
20-30 km/h:  5.000$<br/>
ab 30 km/h: 15.000$<br/>
Fahrerflucht: 							50.000$<br/>
Versuchter Diebstahl eines Fahrzeugs: 	12.000$<br/>
Führen eines gestohlenen Fahrzeugs: 	35.000$<br/><br/>

<b>§2 Verkehrsdelikte(Luft)</b><br/>
Fliegen ohne Pilotenschein: 					 60.000$<br/>
Fliegen ohne Kollisionslichter (bei Nacht): 	 20.000$<br/>
Landen auf dafür nicht vorgesehenen Flächen:	 20.000$<br/>
Landen in Städten ohne Erlaubnis d. Polizei: 	 50.000$<br/>
Fliegen mit illegalen Flugobjekten: 			500.000$<br/>
Mindestflughöhe über Städten - Bei Verstoß: 	 50.000$<br/>
Landeerlaubnis ist gültig für max. 15 Min.<br/><br/>

<b>§3 Drogen</b><br/>
Betäubungsmittel: Wert der gefundenen Ware<br/>
Dealer-Befragung: Wert der verkauften Ware<br/><br/>

<b>§4 Strafgesetzbuch</b><br/>
Versuchter Mord: 	300.000$<br/>
Mord: 				600.000$ (pro Mord) oder Gefängnisstrafe<br/>
Notwehr gilt als versuchter Mord, sofern diese gleich gemeldet wird, ansonsten gilt diese ebenfalls als Mord!<br/><br/>

<b>§5 Beihilfe bei einer Straftat</b><br/>
Begangene Tat: 						50% der Summe<br/>
Versuchter Raubüberfall: 			350.000$<br/>
Banküberfall: 						500.000$ + Beute<br/>
Widerstand gegen die Staatsgewalt: 	 50.000$<br/>
Beamtenbeleidigung: 				 50.000$<br/>
Behinderung der Justiz: 			 45.000$<br/>
Übermäßiges Trollen: 				5-10 Min. Haft<br/>
Gefängnisflucht: 					Ursprüngliche Zeit + 10 Min.<br/>
Beihilfe zur Gefängnisflucht: 		10 Min. Gefängnis<br/>
Geiselnahme: 						10 Minuten Gefängnis<br/>
Erpressung/Gewaltandrohung: 		 60.000$<br/>
Bestechungsversuch: Höhe der Bestechung und/oder 80000$<br/>
Amtsanmaßung: 						 80.000$<br/>
Notrufmissbrauch: 					 25.000$<br/><br/>

<b>$6 Waffendelikte<b><br/>
Waffenbesitz ohne Lizenz: 								20.000$<br/>
Schusswaffengebrauch innerhalb von Städten: 			30.000$<br/>
Öffentliches Tragen einer Waffe innerhalb von Städten: 	75.000$<br/><br/>

<b>Die Polizei darf nach Ermessen auch von den Vorgaben des Bußgeldkataloges abweichen.</b><br/>
<b>Die Dauer einer Haftstrafe kann von 2 Polizisten (ab Rang Officer) übereinstimmend in eigenem Ermessen festgelegt werden.</b>
"
	]
];
player createDiaryRecord ["rules",
[
"Illegale Dinge",
"
Es ist für Zivilisten illegal, diese Fahrzeuge und Gegenstände zu besitzen.<br/><br/>

1. Ifrit<br/>
2. Speedboat<br/>
3. Hunter<br/>
4. Bewaffneter Offroad<br/>
5. Polizei Offroader<br/>
6. Strider<br/>
7. Pawnee<br/>
8. Jede Form vom Drogen<br/>
9. Ausrüstung der Polizei oder des MRD<br/>
10. Alle Waffen und (bewaffneten)Fahrzeuge aus den Rebellenbasis<br/>
"
	]
];