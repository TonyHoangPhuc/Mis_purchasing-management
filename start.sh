#!/bin/bash

echo "Starting Odoo..."
echo "DB NAME IS: $DB_NAME"
echo "START SCRIPT RUNNING"

odoo \
  --db_host=$DB_HOST \
  --db_port=$DB_PORT \
  --db_user=$DB_USER \
  --db_password=$DB_PASSWORD \
  --db_sslmode=require \
  --http-port=10000 \
  --http-interface=0.0.0.0 \
  --proxy-mode 