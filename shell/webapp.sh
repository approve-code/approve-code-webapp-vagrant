#!/bin/sh
cd /vagrant/approve-code-webapp
composer install
bower install --allow-root
app/console doctrine:database:create
app/console doctrine:schema:update --force
