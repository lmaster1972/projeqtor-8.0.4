# CentOS 7 Apache 2.4, PHP 7.2, Projeqtor 8.0.4, rclone Docker image setup

Basic Docker setup to enable a quick start for a LAMP Stack based on CentOS 7 with MariaDB

## TODOs

- [x] Basic setup
- [x] Expose service
- [x] MariaDB proper volume mount
- [x] Segregation of data/logs folders
- [x] Projeqtor v. 8.0.4
 
 
## How to run

docker build
docker-compose up -d

## Services exposed

| Service | Port | Notes |
| --- | --- | --- |
| Apache | 8080 | --- |
| MySQL | --- | internally available |
| rclone | --- | performing cloud backups |

  * Apache to port 8080
  * MariaDB to port 3306/8889

## Hosts/containers within your environment

You'll need to configure your application to use any services you enabled:

| Service | Port | Notes |
| --- | --- | --- |
| www | 8080 | --- |
| db | 3306/8889 | --- |
| backup | --- | reads contents and pushes backups |

## Docker compose cheatsheet

  * Start containers in background: `docker-compose up -d`
  * Start containers on foreground: `docker-compose up`. You will see a stream of logs for every container running.
  * Stop containers: `docker-compose stop`
  * Kill containers: `docker-compose kill`
  * View container logs: `docker-compose logs`
  * Execute command inside of container: `docker-compose exec SERVICE_NAME COMMAND` where `COMMAND` is whatever you want to run. Examples:
    * Shell into the PHP container, `docker-compose exec www bash`
    * Open a mysql shell, `docker-compose exec db mysql -uroot -pCHOSEN_ROOT_PASSWORD`
    * Open a bash shell within database, docker-compose exec db bash
    * Shell into the rclone container, docker-compose exec backup bash

## Recommendations

  * Run composer outside of the php container, as doing so would install all your dependencies owned by `root` within your vendor folder.
  * Run commands (ie Symfony's console) straight inside of your container. You can easily open a shell as described above and do your thing from there.
  * Proper initialization procedures should be followed on MariaDB initialization and deployment.
  * ProjeqtOr codebase has to be downloaded from proper website downloading first version 8.0.0 and then version 8.0.4
  * SQL dump is the dump of version 8.0.4
  * ProjeqtOr administrator profile has login/password set on admin/admin (please change it once you deploy it)

## License
[MIT](/LICENSE)
