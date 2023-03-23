FROM ubuntu:latest
RUN apt-get update && apt-get install -y apache2
RUN echo 'Hallo Welt' > /var/www/html/index.html
EXPOSE 8080
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
