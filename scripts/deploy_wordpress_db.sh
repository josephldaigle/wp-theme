#!/bin/bash

#########################
# WP DB Init Script
#########################
#
# Create a user for wordpress in the database.
#

# prod

echo 'deploying wordpress database'

#mysql -h${RDS_HOSTNAME} -P${RDS_PORT} -u${RDS_USERNAME} -p${RDS_PASSWORD} -e"CREATE DATABASE IF NOT EXISTS ebdb; GRANT ALL ON ebdb.* TO wp_user IDENTIFIED BY '${RDS_PASSWORD}'; FLUSH PRIVILEGES;" ${RDS_DB_NAME}

# try to connect to database
#if [ ! mysql -u root -e 'USE ${RDS_DB_NAME};' ]; then
#  echo 'database does not e'
#fi
#
#if [ "`mysql -h${RDS_HOSTNAME} -P${RDS_PORT} -u${RDS_USERNAME} -p${RDS_PASSWORD} -se'USE ebdb;' 2>&1`" == "" ]; then
#    echo 'ebdb does not exist'
#else
#    echo 'ebdb exists'
#fi


## travis cmd
#mysql -h${RDS_HOSTNAME} -P${RDS_PORT} -u${RDS_USERNAME} -p${RDS_PASSWORD} -e"CREATE DATABASE IF NOT EXISTS ebdb; GRANT ALL ON ebdb.* TO wp_user IDENTIFIED BY '$RDS_PASSWORD'; FLUSH PRIVILEGES;"