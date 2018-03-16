#!/bin/bash

#########################
# WP Install Script
#########################
#
# Script does not run if WP is already installed.
#

if ! $(vendor/bin/wp core is-installed); then

    ## move the wp-config file
    sudo mv wp-config.php ../wp/

    ## install WP
    ## vendor/bin/wp core install --url={YOUR DOMAIN NAME} --title={THE TITLE OF YOUR SITE} --admin_user={YOUR USER NAME} --admin_password={YOUR PASSWORD} --admin_email={YOUR EMAIL}

    ## set WP file permissions
    sudo find ../wp/ -type d -exec chmod 755 {} \;
    sudo find ../wp/ -type f -exec chmod 644 {} \;
fi