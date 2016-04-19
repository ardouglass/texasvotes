#!/bin/sh

# Install and enable PostGIS
sudo apt-get -y install postgis postgresql-9.4-postgis-2.1
export PGHOST="localhost"
export PGUSER="homestead"
export PGPASSWORD="secret"
psql -c "CREATE EXTENSION postgis;"

# Load Harris County Shapefile
shp2pgsql -s EPSG:4326 -d dev/Shapefiles/2016_Harris_County_VPCTS_v1.3/Harris_2016_v1_3.shp precincts | psql
