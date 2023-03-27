#!/bin/bash
sudo apt update -y
sudo apt-get install apache2 -y

# sudo apt-get install mysql-client -y  
# # Connect to the RDS instance
# echo "Attempting to connect to the RDS instance:"
# mysql --host=${aws_db_instance.app_db.endpoint} --user=${local.db_username} --password=${local.db_password} --database=${aws_db_instance.app_db.name} -e "SELECT 1;"

