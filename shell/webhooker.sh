#!/bin/sh
cd /vagrant/approve-code-webhooker
composer install
app/console doctrine:database:create
app/console doctrine:schema:update --force
