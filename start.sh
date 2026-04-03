#!/bin/bash

echo "Init DB..."

odoo \
  -c /etc/odoo/odoo.conf \
  -d postgres \
  -i base \
  --without-demo=all