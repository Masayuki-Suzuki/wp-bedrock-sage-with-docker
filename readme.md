# Dockerized Wordpress local development environment.
* Wordpress install based on Bedrock.
* Install WordPress starter theme Sage.
* php 7.x, mariadb latest and nginx latest

## Requirements
* Docker
* Docker Compose
* Composer

## Install
* Running shell script  
``$ sh sh/init.sh``
* Set up .env file in bedrock directory.  
example: {Your project directory}/www/{bedrock directory}/.env
  ```mysql host name : mysql:3306```
* Set up your development domain name like `http://example.dev` in Hosts file.
* Set up virtual host in ./nginx/default.conf
!! You have to write root directory is /src/{ bedrock directory name }/web/
* Access to `{your development domain name}/wp/wp-admin` then start to install Wordpress.

## Usage
You can use docker and docker-compose command as usual.  
* [Docker Docs](https://docs.docker.com/)
* [Docker-compose Docs](https://docs.docker.com/compose/)
