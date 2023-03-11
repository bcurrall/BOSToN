## source https://davescripts.com/docker-container-with-centos-7-apache-mod-wsgi-python-3

FROM centos:7

# Install Apache
RUN yum -y update
RUN yum -y install httpd httpd-tools

# Install Python 3
#RUN yum -y install python3

# Install Python 2.7
# RUN yum -y install python2
# RUN yum -y install epel-release && yum clean all
# RUN yum -y install python-pip && yum clean all
# RUN pip install --upgrade pip

# Install mod_wsgi
RUN yum -y install mod_wsgi

# pip3 install
RUN pip3 install biopython
# RUN pip install biopython==1.76


COPY www /var/www

EXPOSE 80

# Start Apache
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
