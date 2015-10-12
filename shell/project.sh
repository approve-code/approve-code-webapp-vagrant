#!/bin/sh
cd /vagrant
git clone https://github.com/approve-code/approve-code-webapp.git
cd approve-code-webapp
composer install
bower install --allow-root
app/console doctrine:database:create
app/console doctrine:schema:update --force
