# [DE-Kursname hier eintragen]

Dies ist das Repository für den **LinkedIn Learning** Kurs [COURSENAME]. Den gesamten Kurs finden Sie auf [LinkedIn Learning][lil-course-url].

[![COURSENAME](COURSEIMAGE)](LICOURSEURL)![Building a GraphQL Project with React.js][lil-thumbnail-url] 

[COURSEDESCRIPTION]

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


Sehen Sie sich andere Kurse des Autors auf [LinkedIn Learning](https://www.linkedin.com/learning/instructors/thomas-rose?u=104) an.

[lil-course-url]: https://www.linkedin.com/learning/building-a-graphql-project-with-react-js
[lil-thumbnail-url]: https://cdn.lynda.com/course/2875095/2875095-1615224395432-16x9.jpg
