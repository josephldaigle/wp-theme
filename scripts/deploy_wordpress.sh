#!/bin/bash

mv wp-config.php wp/

sudo -su ec2-user

/vendor/bin/wp core install --path='wp' --url=http://wptheme-env.gdyysacpvg.us-east-1.elasticbeanstalk.com/ --title="WP Theme" --admin_user=webmaster --admin_email=josephldaigle@yahoo.com --admin_password="password"