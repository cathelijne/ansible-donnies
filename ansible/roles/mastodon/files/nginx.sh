#!/bin/bash

cp nginx.conf /var/www/vhosts/system/dedonnie.social/conf/nginx.conf
systemctl reload nginx
