FROM php:alpine
LABEL maintainer="gb@birke-software.de" \
	org.label-schema.url="http://spress.yosymfony.com/" \
	org.label-schema.name="Spress" \
  	org.label-schema.description="A static site generator" \
   	org.label-schema.docker.schema-version="1.0"

RUN curl -L -o /usr/local/bin/spress https://github.com/spress/Spress/releases/download/v2.2.0-rc/spress.phar && \
	chmod +x /usr/local/bin/spress

WORKDIR /var/www
ENTRYPOINT [ "/usr/local/bin/spress" ]
CMD [ "site:build", "--watch", "--server" ]
