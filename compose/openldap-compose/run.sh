#!/bin/sh
[ -d /usr/local/etc/openldap/slapd.d ] ||  mkdir -p /usr/local/etc/openldap/slapd.d

/usr/local/libexec/slapd -f /usr/local/etc/openldap/slapd.conf -F /usr/local/etc/openldap/slapd.d -d 256

