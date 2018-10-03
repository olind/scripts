#!/bin/bash

rsync -PzrlptgD --del --delete-excluded -r --rsync-path=~/bin/rsync godaddy:~/ /Users/Ola/Backup/godaddy/

#---

#todo: dump DB

#mysqldump -u root -p --all-databases > all_dbs.sql

#för att få in dom: mysql -u root -p < all_dbs.sql

#todo: backup wordpress.com blogs
#todo: rsync retries https://gist.github.com/iangreenleaf/279849 ?