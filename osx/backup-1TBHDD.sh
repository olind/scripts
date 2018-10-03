#!/bin/bash

rsync -PrlptgD --del --delete-excluded -r --exclude-from=/Users/Ola/Dropbox/Scripts/backup_exclude.txt /Volumes/OLA-1TB/ /Volumes/Backup-1.5TB/OLA-1TB
