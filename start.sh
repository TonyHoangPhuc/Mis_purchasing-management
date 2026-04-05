#!/bin/bash

echo "===== INIT ODOO DATABASE ====="
echo "DB NAME: $DB_NAME"

odoo \
  --db_host=$DB_HOST \
  --db_port=$DB_PORT \
  --db_user=$DB_USER \
  --db_password=$DB_PASSWORD \
  -d postgres \
  -i base \
  --db_sslmode=require \
  --workers=0 \
  --max-cron-threads=0 \
  --http-port=10000 \
  --http-interface=0.0.0.0