#!/bin/bash

#default_ip="ldap.fzyun.io"
#default_port=389
#default_base_dn="dc=fzyun,dc=io"
#default_bind_dn="cn=root,dc=fzyun,dc=io"
#default_bind_dn_password="bind-dn-password"
#
#if [ -z ${LDAP_IP+x} ]; then 
#	echo "LDAP_IP is unset. IP(or DOMAIN_NAME) $default_ip will be used as default."; 
#else
#	echo "Environment Variable is set to LDAP_IP = '$LDAP_IP'."; 
#fi
#
#if [ -z ${LDAP_PORT+x} ]; then 
#	echo "LDAP_PORT is unset. PORT $default_port will be used as default."; 
#else
#	echo "Environment Variable is set to LDAP_PORT = '$LDAP_PORT'."; 
#fi
#
#if [ -z ${LDAP_BASE_DN+x} ]; then 
#	echo "LDAP_BASE_DN is unset. BASE_DN $default_base_dn will be used as default."; 
#else
#	echo "Environment Variable is set to LDAP_BASE_DN = '$LDAP_BASE_DN'."; 
#	sed -i "s/$default_base_dn/$LDAP_BASE_DN/g" /etc/apache2/sites-enabled/dav_svn.conf;
#	#sed -i "s/$default_base_dn/$LDAP_BASE_DN/g" /var/www/svnadmin/data/config.ini;
#fi
#
#if [ -z ${LDAP_BIND_DN+x} ]; then 
#	echo "LDAP_BIND_DN is unset. BIND_DN $default_bind_dn will be used as default."; 
#else
#	echo "Environment Variable is set to LDAP_BIND_DN = '$LDAP_BIND_DN'."; 
#	sed -i "s/$default_bind_dn/$LDAP_BIND_DN/g" /etc/apache2/sites-enabled/dav_svn.conf;
#	#sed -i "s/$default_bind_dn/$LDAP_BIND_DN/g" /var/www/svnadmin/data/config.ini;
#fi
#
#if [ -z ${LDAP_BIND_DN_PASSWORD+x} ]; then 
#	echo "LDAP_BIND_DN_PASSWORD is unset. BIND_DN_PASSWORD $default_bind_dn_password will be used as default."; 
#else
#	echo "Environment Variable is set to LDAP_BIND_DN_PASSWORD = '$LDAP_BIND_DN_PASSWORD'."; 
#	sed -i "s/$default_bind_dn_password/$LDAP_BIND_DN_PASSWORD/g" /etc/apache2/sites-enabled/dav_svn.conf;
#	sed -i "s/$default_bind_dn_password/$LDAP_BIND_DN_PASSWORD/g" /var/www/svnadmin/data/config.ini;
#fi
#sed -i "s/$default_ip:$default_port/${LDAP_IP:-$default_ip}:${LDAP_PORT:-$default_port}/g" /etc/apache2/sites-enabled/dav_svn.conf;
#sed -i "s/$default_ip:$default_port/${LDAP_IP:-$default_ip}:${LDAP_PORT:-$default_port}/g" /var/www/svnadmin/data/config.ini;

source /etc/apache2/envvars
/usr/sbin/apache2 -D FOREGROUND

