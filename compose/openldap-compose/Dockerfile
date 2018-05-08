FROM hub.fzyun.io/founder/debian:stretch-slim
RUN apt-get update && apt-get install -y curl gcc make libltdl-dev groff-base
WORKDIR /
RUN curl -L http://download.oracle.com/berkeley-db/db-4.6.21.tar.gz | tar -zx
RUN cd /db-4.6.21/build_unix && ../dist/configure && make install
WORKDIR /
RUN curl -L http://www.openldap.org/software/download/OpenLDAP/openldap-release.tgz | tar -zx
RUN ln -s /openldap-* openldap && cd /openldap && ./configure --enable-modules --enable-rewrite --enable-ldap --enable-meta --enable-rwm CPPFLAGS="-I/usr/local/BerkeleyDB.4.6/include/" LDFLAGS="-L/usr/local/BerkeleyDB.4.6/lib/" LD_LIBRARY_PATH="/usr/local/BerkeleyDB.4.6/lib/"
WORKDIR /openldap
RUN make && make install
EXPOSE 389 636
ENV LD_LIBRARY_PATH /usr/local/BerkeleyDB.4.6/lib/
COPY run.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/run.sh
CMD '/usr/local/bin/run.sh'
