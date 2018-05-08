#FROM hub.fzyun.io/founder/ubuntu:xenial
FROM hub.fzyun.io/founder/debian:stretch-slim

RUN apt-get update && apt-get install -y apache2 subversion vim
RUN apt-get install -y libapache2-mod-svn && \
    a2enmod dav dav_svn authnz_ldap macro
COPY dav_svn.conf /etc/apache2/sites-available/dav_svn.conf
RUN a2ensite dav_svn.conf
COPY startup.sh /startup.sh
ENTRYPOINT /startup.sh
