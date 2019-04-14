#!/bin/sh

j2 ./templates/nginx.j2 -o /etc/nginx/nginx.conf

/docker-entrypoint.sh
