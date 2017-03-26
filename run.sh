#git clone https://github.com/up1/demo_deploy_war.git
#cd demo_deploy_war
docker run  -d --name dbserver -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 -e MYSQL_DATABASE=carpark  mysql:latest
docker container run -d --name webserver --link dbserver -p 8080:8080 -v $(pwd):/usr/local/tomcat/webapps tomcat:8-jre8
apt install mysql-client-core-5.7
