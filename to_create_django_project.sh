#!/bin/bash

. env
docker-compose run --no-deps --rm web django-admin startproject mydjango .
sudo chown $YOUR_UNIX_USER:$YOUR_UNIX_GROUP -R ./web/mydjango
sudo chown $YOUR_UNIX_USER:$YOUR_UNIX_GROUP ./web/manage.py
