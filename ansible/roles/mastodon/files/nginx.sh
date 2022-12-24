#!/bin/bash

cp /var/mastodon/nginx.conf /var/www/vhosts/system/dedonnie.social/conf/nginx.conf
systemctl reload nginx
