#!/bin/bash
psql -a -e --username root -c "CREATE ROLE $FILE_SERVER_DATABASES_USER WITH LOGIN ENCRYPTED PASSWORD '$FILE_SERVER_DATABASES_PASSWORD';"
psql -a -e --username root -c "CREATE DATABASE $FILE_SERVER_DATABASES_NAME OWNER =  $FILE_SERVER_DATABASES_USER;"
psql -a -e --username root -c "ALTER USER $FILE_SERVER_DATABASES_USER CREATEDB;"