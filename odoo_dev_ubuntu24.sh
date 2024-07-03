#!/bin/bash

sudo apt update && sudo apt upgrade

### install packages and libraries
sudo apt install --no-install-recommends git python3-dev build-essential python3-pip python3-venv
sudo apt install --no-install-recommends libldap2-dev libpq-dev libsasl2-dev npm libxml2-dev libxslt1-dev

# fix me libxml2 and libxslt development packages are installed

# clone odoo
git clone https://github.com/odoo/odoo.git -b 17.0 --depth 1

# install PG
sudo apt install postgresql postgresql-client
# start PG Service
sudo systemctl start postgresql.service
# create PG user for odoo
sudo -u postgres createuser -d -R -S $USER

# install miniconda https://docs.anaconda.com/free/miniconda/#quick-command-line-install
