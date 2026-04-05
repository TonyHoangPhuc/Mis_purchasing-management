#!/bin/bash

echo "Starting Odoo..."

odoo \
  -c /etc/odoo/odoo.conf \
  --http-port=10000 \
  --http-interface=0.0.0.0 \
  --proxy-mode \
  --db-filter=.* \
  --without-demo=all