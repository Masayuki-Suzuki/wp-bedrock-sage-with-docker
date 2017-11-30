#!/bin/sh
#ROOT = `dirname ${0}`
mkdir -p db-data www
docker-compose build --no-cache
docker-compose up -d
echo "What is your bedrock directory name? : "
read dirName
echo "Composer is creating your project. please wait..."
composer create-project roots/bedrock ./www/$dirName
cd ./www/$dirName/web/app/themes/
echo "Completed creating your project with bedrock.\n\n"
echo "What is your theme name? : "
read themeName
echo "Composer is creating your theme directory. please wait..."
composer create-project roots/sage $themeName dev-master
echo "Completed installing Sage."
cd $ROOT
echo "All done!\nCopy .env.example to .env ($ROOT/www/$dirName) and update environment variables.\nDocs: https://roots.io/bedrock/docs/installing-bedrock/"
echo "Create new local host address and write it to hosts file.\n Also, set virtual host root directory /src/your bedrock dirName/web on ./nginx/default.conf."
