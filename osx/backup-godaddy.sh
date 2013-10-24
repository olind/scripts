#!/bin/bash

#todo: dump DB

rsync -PzrlptgD --del --delete-excluded -r --rsync-path=~/bin/rsync godaddy:~/ /Users/Ola/Backup/godaddy/

#todo: backup wordpress.com blogs