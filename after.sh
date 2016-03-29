#!/bin/sh

# Install and enable PostGIS
sudo apt-get -y install postgresql-9.4-postgis-2.1
export PGHOST="localhost"
export PGUSER="homestead"
export PGPASSWORD="secret"
psql -c "CREATE EXTENSION postgis;"
