#!/bin/bash
# this scripts carry out regular daily maintenance storying data dump on a daily schedule removing files older than a week
# credits: https://www.tutorialkart.com/bash-shell-scripting/bash-date-format-options-examples/
#        : https://dev.mysql.com/doc/refman/5.6/en/mysqldump.html
#        : https://www.mrwebmaster.it/mysql/fare-backup-database-mysql-mysqldump_6805.html
#        : http://www.ducea.com/2007/07/25/dumping-mysql-stored-procedures-functions-and-triggers/
#        : https://www.vionblog.com/linux-delete-files-older-than-x-days/
#        : https://linuxhint.com/30_bash_script_examples/
find /tmp2/ -type f -name 'data-*.sql.gz' -mtime +6 -exec rm {} \;
# backup filename is built as data-YYYYMMDD.sql.gz
DATE=$(date '+%Y%m%d')
mysqldump -u root --password db_root_password --no-create-db --skip-comments projeqtr | gzip -9 > data-$DATE.sql.gz

