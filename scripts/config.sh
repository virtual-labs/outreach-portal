#!/bin/bash

######## Database Configuration #########

HOST_NAME=localhost
USER_NAME=root
PASSWORD=password
DATABASE_NAME=outreach

######## Eamil (Sendmail) Configuration #######

SENDMAIL_CONFIG_FILE_PATH=/etc/mail/sendmail.mc
LOCAL_SMTP_SERVER_PRESENT=no
#if yes specify your smtp address
SMTP_SERVER_ADDRESS=smpt.admin.iiit.ac.in

######## Apache configuration ########

APACHE_DEFAULT_CONFIG_PATH=/etc/apache2/sites-available/default

####### Outreach application configuration #######

PATH_FOR_SQL_FILE="/var/www/Documents/outreach.sql"
PATH_FOR_DB_CONFIG_FILE="/var/www/application/database.php"
