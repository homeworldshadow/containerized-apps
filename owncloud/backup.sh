#!/bin/bash

docker exec --user www-data owncloud_server occ maintenance:mode --on
sudo mysqldump --column-statistics=0 --single-transaction -h 127.0.0.1 -P 3306 -u root -powncloud owncloud > ./backup/owncloud-dbbackup_`date +"%Y%m%d"`.bak
docker exec --user www-data owncloud_server occ maintenance:mode --off

