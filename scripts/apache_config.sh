#!/bin/sh
source config.sh
#Apache server configuration
#Which allows to read .htaccess file for apache directory
echo "Setting up Apache server configuration"
#sed -i '/<Directory \/var\/www\/>/,/<\/Directory>/ s/AllowOverride None/AllowOverride all/' /etc/apache2/sites-available/default
sed -i '/<Directory \/var\/www\/>/,/<\/Directory>/ s/AllowOverride None/AllowOverride all/' $APACHE_DEFAULT_CONFIG_PATH
if [ $? -ne 0 ]
then
    echo "Apache configuration is failed"
    echo "##### exiting #####"
    exit
fi
#Application database settings
sed -i "s/\['hostname'\] = ['a-z']*/\['hostname'\] = '$HOST_NAME'/" $PATH_FOR_DB_CONFIG_FILE
if [ $? -ne 0 ]
then
    echo "Failed to configure host name in application"
    echo "##### exiting #####"
    exit
fi

sed -i "s/\['username'\] = ['a-z']*/\['username'\] = '$USER_NAME'/" $PATH_FOR_DB_CONFIG_FILE
if [ $? -ne 0 ]
then
    echo "Failed to configure user name in application"
    echo "##### exiting #####"
    exit
fi

sed -i "s/\['password'\] = ['a-z']*/\['password'\] = '$PASSWORD'/" $PATH_FOR_DB_CONFIG_FILE
if [ $? -ne 0 ]
then
    echo "Failed to configure password in application"
    echo "##### exiting #####"
    exit
fi

sed -i "s/\['database'\] = ['a-z']*/\['database'\] = '$DATABASE_NAME'/" $PATH_FOR_DB_CONFIG_FILE
if [ $? -ne 0 ]
then
    echo "Failed to configure database name in application"
    echo "##### exiting #####"
    exit
fi
