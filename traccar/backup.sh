#!/bin/bash

sudo mysqldump --column-statistics=0 --single-transaction -h 127.0.0.1 -P 3307 -u root -ptraccar traccar > ./backup/traccar-dbbackup_`date +"%Y%m%d"`.bak

