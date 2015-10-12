#!/bin/sh

apt-get install -y nginx

echo "server {
          server_name approve-code.dev;
          root /vagrant/approve-code-webapp/web;
          client_max_body_size 40m;
          location / {
              # try to serve file directly, fallback to app.php
              try_files \$uri /app.php\$is_args\$args;
          }
          location ~ ^/(app|app_dev|config)\.php(/|$) {
              fastcgi_pass unix:/var/run/php5-fpm.sock;
              fastcgi_split_path_info ^(.+\.php)(/.*)$;
              include fastcgi_params;
              fastcgi_param SCRIPT_FILENAME \$document_root\$fastcgi_script_name;
              fastcgi_param HTTPS off;
              fastcgi_read_timeout 600;
              fastcgi_buffers 64 64k;
              fastcgi_buffer_size 128k;
          }
          error_log /var/log/nginx/approve-code.dev.error.log;
          access_log /var/log/nginx/approve-code.dev.access.log;
      }" >> /etc/nginx/sites-available/approve-code

ln -s /etc/nginx/sites-available/approve-code /etc/nginx/sites-enabled/

service nginx restart
