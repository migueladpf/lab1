FROM ubuntu:16.04
RUN apt-get update && \
    apt-get install -yq apache2 php7.0 libapache2-mod-php && \
	apt-get autoremove --purge && \
	apt-get clean && \
	rm -rf /var/lib/apt/lib/* && \
	rm -rf /var/www/html/index.html
COPY files/index.php /var/www/html/index.php
COPY files/run.sh /run.sh
RUN chmod +x /run.sh
ENTRYPOINT ["/run.sh"]

	


