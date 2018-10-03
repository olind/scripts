#!/bin/bash

rsync -PzrlptgD --del --delete-excluded -r fsdata:~/www/ /Users/Ola/Backup/fsdata/www

#--rsync-path=~/bin/rsync fsdata:~/t/ /Users/Ola/TMP/fsdata/

#---

#todo: dump DB

#mysqldump -u root -p --all-databases > all_dbs.sql

#för att få in dom: mysql -u root -p < all_dbs.sql

#todo: backup wordpress.com blogs
#todo: rsync retries https://gist.github.com/iangreenleaf/279849 ?