#!/bin/bash

mv wp-config.php wp/

sudo -su ec2-user

vendor/bin/wp core install --path='wp' --url=http://localhost --title="WP Theme" --admin_user=webmaster --admin_email=josephldaigle@yahoo.com --admin_password="password"