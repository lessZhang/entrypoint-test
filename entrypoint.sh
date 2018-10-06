#!/bin/sh
case $1 in
	nginx)
	/usr/sbin/nginx -g "daemon off;"
	;;
	tomcat)
	/apache-tomcat-9.0.12/bin/catalina.sh run
	;;
	*)
	echo 'use nginx or tomcat'
	exit 0
	;;
esac
