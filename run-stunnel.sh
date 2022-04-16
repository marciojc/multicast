#!/bin/sh
/usr/bin/stunnel

cp /etc/nginx/nginx.conf.template /etc/nginx/nginx.conf

nginx -g 'daemon off;'
