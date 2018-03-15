#!/bin/bash

if ! $(vendor/bin/wp core is-installed); then

    wp core config --dbname={YOUR DATABASE NAME} --dbuser={YOUR DATABASE USERNAME} --dbpass={YOUR DATABASE PASSWORD}
    wp core install --url={YOUR DOMAIN NAME} --title={THE TITLE OF YOUR SITE} --admin_user={YOUR USER NAME} --admin_password={YOUR PASSWORD} --admin_email={YOUR EMAIL}

    sudo mv wp-config.php wp/

    sudo find wp/ -type d -exec chmod 755 {} \;
    sudo find wp/ -type f -exec chmod 644 {} \;
fi