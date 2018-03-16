#!/bin/bash

#########################
# WP Install Script
#########################
#
# Script does not run if WP is already installed.
#

## record working dir
DIR="$(pwd)"

cd ../wp
echo 'moving to wp install dir...'

## try install wordpress
if ! $(${DIR}/vendor/bin/wp core is-installed); then

    ## move the wp-config file
    echo 'relocating  wp-config.php'
    $(sudo mv ${DIR}/wp-config.php .)
    $(sudo mv ${DIR}/.htaccess .)

    ## install WP
    ## vendor/bin/wp core install --url={YOUR DOMAIN NAME} --title={THE TITLE OF YOUR SITE} --admin_user={YOUR USER NAME} --admin_password={YOUR PASSWORD} --admin_email={YOUR EMAIL}
    ## vendor/bin/wp core install --path="../wp/" --url=http://joedaigle.me --title='WP Theme' --admin_user=webmaster --admin_email=josephldaigle@yahoo.com --admin_password=somethingsecure

    ## set WP file permissions
    sudo find -type d -exec chmod 755 {} \;
    sudo find -type f -exec chmod 644 {} \;

fi


## return to orig working dir
cd ${DIR}