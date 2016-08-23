title Spring Cloud Web

SET JHOME=%JAVA_HOME%
set JAVA_HOME=%SPRING_CLOUD_JAVA_HOME%
echo %JAVA_HOME%

set APP_PORT=8888
set MANGEMENT_PORT=9888
set EUREKA_SERVER_URL=http://test-eureka:test-password@localhost:8761/eureka
set STATIC_RESOURCE_LOCATION="file:///C:/Spring Cloud/Static Location/resources/"

REM Starting Cloud Web
mvn clean package spring-boot:run -Dspring.profiles.active=web -Dmaven.test.skip=true  -DEUREKA_SERVER_URL=%EUREKA_SERVER_URL%  -DSTATIC_RESOURCE_LOCATION=%STATIC_RESOURCE_LOCATION% -DAPP_PORT=%APP_PORT% -DMANGEMENT_PORT=%MANGEMENT_PORT%

SET JAVA_HOME=%JHOME%