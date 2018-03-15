#!/bin/bash

mv wp-config.php wp/

sudo -su ec2-user

if ! $(vendor/bin/wp core is-installed); then
    vendor/bin/wp core install --path='wp' --url=http://localhost --title="WP Theme" --admin_user=webmaster --admin_email=josephldaigle@yahoo.com --admin_password="password"
fi
