#!/bin/bash

#########################
# WP Install Script
#########################
#
# Script does not run if WP is already installed.
#

## record working dir
DIR="$(pwd)"

## move to wp install dir
cd ../wp
echo 'moving to wp install dir...'

## move the wp-config file
echo 'relocating  wp-config.php...'
$(sudo mv ${DIR}/wp-config.php .)
$(sudo mv ${DIR}/.htaccess .)

## return to orig working dir
cd ${DIR}