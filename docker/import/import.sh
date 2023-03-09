#!/bin/bash

if [ -z "$1" ] && [ -z "$2" ] ; then
  echo "Please specify an SQL database and SQL file."
  exit 1
fi

. ../.env
if [ -e ./$2 ] ; then
   echo "Importing..."
   sudo docker exec -i xampp-cloud-db mysql -h127.0.0.1 -uroot -p${MYSQL_PASSWORD} -e "CREATE DATABASE IF NOT EXISTS ${1};"
   sudo docker exec -i xampp-cloud-db mysql -h127.0.0.1 --max_allowed_packet=1024M -uroot -p${MYSQL_PASSWORD} --force $1 < $2
else
   echo "File does not exists"
fi

