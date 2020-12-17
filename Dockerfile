FROM tomcat:jdk8-openjdk
COPY game-of-life/gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps/gameoflife.war
