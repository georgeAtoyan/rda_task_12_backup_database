#! /bin/bash

# Full backup and restoration
mysqldump -u "$DB_USER" -p"$DB_PASSWORD" ShopDB --result-file=full_backup.sql
mysql -u "$DB_USER" -p"$DB_PASSWORD" ShopDBReserve < full_backup.sql

# Data-only backup and restoration
mysqldump -u "$DB_USER" -p"$DB_PASSWORD" ShopDB --no-create-info --result-file=data_backup.sql
mysql -u "$DB_USER" -p"$DB_PASSWORD" ShopDBDevelopment < data_backup.sql