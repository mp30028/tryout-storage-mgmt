#!/bin/bash

set -eu

db_admin_username=$1
db_admin_password=$2
db_host=$3
db_name=$4
db_user=$5
db_user_password=$6


mysql -u$db_admin_username -p$db_admin_password --host=$db_host -e"SET @db_user='$db_user', @db_user_password='$db_user_password', @db_name='$db_name'; \. /scripts/reset-db-user.sql"

echo "user '{db_user}' setup completed successfully"
exit 0