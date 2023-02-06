## source https://davescripts.com/docker-container-with-centos-7-apache-mod-wsgi-python-3

FROM ubuntu/apache2
#RUN apt-get update && \
#  apt-get install -y \
#  apache2 \
#  apache2-utils

RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip

#EXPOSE 8080:80

COPY www /var/www/html

RUN chmod +x /var/www/html/cgi-bin/BOSToN/BOSToNWeb.py

# Start Apache
#CMD ["apache2ctl", "-D","FOREGROUND"]
