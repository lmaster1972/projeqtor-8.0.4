DELETE FROM mysql.user WHERE User='';
DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
DROP DATABASE IF EXISTS test;
DELETE FROM mysql.db WHERE Db='test' OR Db='test\\_%';
grant all on projeqtr.* to 'projeqtor'@'centos7.project-projqt_default' identified by 'db_projeqtor_password';
FLUSH PRIVILEGES;
