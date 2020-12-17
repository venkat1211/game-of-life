FROM tomcat:jdk8-openjdk
COPY gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps/gameoflife.war
