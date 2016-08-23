title Spring Eureka Server

SET JHOME=%JAVA_HOME%
set JAVA_HOME=%SPRING_CLOUD_JAVA_HOME%
echo %JAVA_HOME%

set APP_PORT=8761
set MAVEN_OPTS=-Xmx256m -Xms256m

REM Starting Eureka Server
mvn clean package spring-boot:run -Dmaven.test.skip=true  -DAPP_PORT=%APP_PORT%

SET JAVA_HOME=%JHOME%
