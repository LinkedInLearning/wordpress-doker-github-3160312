# Wordpress: Workflow mit Docker und Github optimieren

Dies ist das Repository für den **LinkedIn Learning** Kurs `Wordpress: Workflow mit Docker und Github optimieren`. Den gesamten Kurs finden Sie auf [LinkedIn Learning][lil-course-url].

![Wordpress: Workflow mit Docker und Github optimieren][lil-thumbnail-url] 

Lernen Sie in diesem Videokurs ein professionelles Setup für die WordPress-Entwicklung kennen: Thomas Rose demonstriert Ihnen, wie Sie eine lokale Entwicklungsumgebung mit Docker einrichten, die die gleichen Einstellungen hat wie der Live-Server und auch zu installierende Software. Zudem bringt er eine Versionskontrolle mit Git und Continious Deployment mit Github-Actions ins Spiel. Sehen Sie, wie in einem strukturierten Deployment-Prozess Daten zentral über github auf den Server hochgeladen werden. Sobald neuer Code gepushet wird, startet ein Workflow mit der Kompilierung und Veröffentlichung auf dem Live-Server.

## Anleitung

Dieses Repository hat Branches für jedes Video im Kurs. Verwenden Sie das Ausklappmenü "Branch: ..." in GitHub um zwischen den unterschiedlichen Branches hin und her zu wechseln bzw. um bei einem spezifischen Status einzusteigen. Oder Sie fügen `/tree/BRANCH_NAME` der URL hinzu um direkt in den gewünschten Branch zu wechseln.

## Installation

1. Um diese Übungsdateien nutzen zu können, müssen Sie folgendes installiert haben:
   - Docker
   - git
   - ggf. Node
2. Klonen Sie das Repository in Ihre lokale Maschine unter Verwendung von terminal (Mac), CMD (Windows) oder ein anderes Werkzeug mit grafischer Bedienoberfläche wie SourceTree.


## Nutzung
### Installation von WordPress
- docker-compose up -d
- Aufruf via Browser und dortige Installation

### WordPress CLI
``docker run -it --rm --volumes-from wordpress --network container:wordpress  wordpress:cli /bin/bash``
``wp db check`` 

## Weitere Befehle
Weitere Befehle siehe Datei _Makefile_.

### Autor

**Thomas Rose**

Sehen Sie sich andere Kurse des Autors auf [LinkedIn Learning](https://www.linkedin.com/learning/instructors/thomas-rose) an.

[lil-course-url]: https://www.linkedin.com/learning/wordpress-fur-entwickler-workflow-mit-docker-und-github-optimieren/
[lil-thumbnail-url]: https://media-exp1.licdn.com/dms/image/C4E0DAQH_9GeqCbk2Lw/learning-public-crop_675_1200/0/1646128910418?e=1646899200&v=beta&t=gdURVaG6NSqnHmoFgCHaPWsehaD5Vybjp2KbIXtjrRM
