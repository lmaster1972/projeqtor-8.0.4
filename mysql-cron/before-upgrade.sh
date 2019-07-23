#!/bin/bash
# this scripts performs a preliminary backup of data and structure before upgrade of projeqtor
# credits: https://dev.mysql.com/doc/refman/5.6/en/mysqldump.html
#        : https://www.mrwebmaster.it/mysql/fare-backup-database-mysql-mysqldump_6805.html
#        : http://www.ducea.com/2007/07/25/dumping-mysql-stored-procedures-functions-and-triggers/
#        : https://linuxhint.com/30_bash_script_examples/
# it removes earlier file in case it exists
rm -f /tmp2/structure.sql.gz
# then it performs the dump
mysqldump -u root --password db_root_password --routines --no-data --skip-opt --add-drop-database projeqtr | gzip -9 > /tmp2/structure.sql.gz 
