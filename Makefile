up:
	docker-compose up -d

stop:
	docker-compose stop

shell:
	docker-compose exec wordpress bash
	
shell-db:
	docker-compose exec db bash

node:
	docker-compose exec node bash

cli-shell:
	docker run -it --rm --volumes-from wordpress --network container:wordpress  wordpress:cli /bin/bash

deploy:
	cd htdocs && rsync -avhz wp-content/themes/mytheme dev:<IHR_VERZEICHNIS>/wp-content/themes/mytheme

deploy_s:
	make bundle_s upload_s install_s

bundle_s:
	npm run bundle

upload_s:
	rsync htdocs/wp-content/themes/_s.zip dev:<IHR_VERZEICHNIS>/wp-content/themes/

install_s:
	ssh dev "cd <IHR_VERZEICHNIS>/wp-content/themes/ && wp theme install _s.zip --force"

activate_s:
	ssh dev "cd <IHR_VERZEICHNIS>/wp-content/themes/ && wp theme activate _s"


sync-shared:
	rsync -av dev:<IHR_VERZEICHNIS>/wp-content/uploads/ htdocs/wp-content/uploads

sync-db:
	ssh dev "cd <IHR_VERZEICHNIS> && mysqldump wordpress-lil > sync.sql" && \
	rsync dev:<IHR_VERZEICHNIS>/sync.sql sync.sql && \
	ssh dev "rm <IHR_VERZEICHNIS>/sync.sql" && \
	sed -i 's/https:\/\/<IHR_VERZEICHNIS>\/wordpress/http:\/\/localhost:8300/g' sync.sql && \
	mysql -h db wordpress < sync.sql && \
	rm sync.sql

