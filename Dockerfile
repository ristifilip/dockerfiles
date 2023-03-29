FROM ubuntu:latest

RUN apt-get -y update

RUN echo "application-managementsystem updated" >> log.txt

RUN apt-get install -y apache2 curl

RUN echo "apache2 installed" >> log.txt

EXPOSE 80

RUN echo "Port 80 exposed" >> log.txt

WORKDIR /var/www/html

COPY index.html /var/www/html/index.html

RUN echo "index.html copied to /var/www/index.html" >> log.txt

ENTRYPOINT ["/usr/sbin/apache2ctl"]


RUN echo "Entrypoint set to /usr/sbin/apache2ctl" >> log.txt

CMD ["-D", "FOREGROUND"]
