#!/bin/bash

#########################
# WP Deploy Script
#########################
#
# Script does not run if WP is already installed.
#

## record working dir
DIR="$(pwd)"

if ! $(${DIR}/vendor/bin/wp core is-installed);
then

    ## move to wp install dir
    cd ../wp
    echo 'changed pwd to wp install dir'

    ## move the wp-config file
    $(sudo mv ${DIR}/wp-config.php .)
    $(sudo mv ${DIR}/.htaccess .)
    echo 'deployed wp-config.php and .htaccess'

    ## return to orig working dir
    cd ${DIR}
    echo 'returned to original dir'
    echo "$(pwd)"
fi