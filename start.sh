#!/bin/bash

echo "Initializing database if needed..."

odoo \
  -c /etc/odoo/odoo.conf \
  -d postgres \
  -i base \
  --without-demo=all \
  --stop-after-init

echo "Starting Odoo..."

odoo \
  -c /etc/odoo/odoo.conf \
  --http-port=$PORT \
  --http-interface=0.0.0.0 \
  --proxy-mode