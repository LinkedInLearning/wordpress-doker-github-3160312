## Helper-Container erzeugen
docker build -t helper .
docker run -it -v ${pwd}:/project -v ${pwd}\helper\root:/root --network=container:wordpress helper /bin/bash

## SSH einrichten
nano /root/.ssh/config
ssh-keygen -t rsa -b 4096
ssh-copy-id -i dev.pub dev
ssh dev

ssh-agent -t 300 /bin/bash
ssh-add /root/.ssh/dev