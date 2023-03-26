#!/bin/sh

# Load variables from the .env file
set -a
source /home/blackstock/.env
set +a

DB_CONTAINER_NAME="blackstock-wordpress-1"

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="$BACKUP_DIR/$MYSQL_DATABASE_$TIMESTAMP.sql"

docker exec $DB_CONTAINER_NAME sh -c "exec mysqldump --databases $MYSQL_DATABASE --single-transaction -u$MYSQL_USER -p$MYSQL_PASSWORD" > $BACKUP_FILE
gzip $BACKUP_FILE

