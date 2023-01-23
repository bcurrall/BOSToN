## source https://davescripts.com/docker-container-with-centos-7-apache-mod-wsgi-python-3

FROM centos:7

# Install Apache
RUN yum -y update
RUN yum -y install httpd httpd-tools

# Install Python 3
RUN yum -y install python3

# Install mod_wsgi
RUN yum -y install mod_wsgi

COPY www /var/www

EXPOSE 80

# Start Apache
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
