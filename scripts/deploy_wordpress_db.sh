#!/bin/bash

#########################
# WP DB Init Script
#########################
#
# Create a user for wordpress in the database.
#

mysql -h $RDS_HOSTNAME -P 3306 -u $RDS_USERNAME -p $RDS_PASSWORD -e 'CREATE DATABASE IF NOT EXISTS ebdb; GRANT ALL ON ebdb.* TO wp_user IDENTIFIED BY $RDS_PASSWORD; FLUSH PRIVILEGES;'