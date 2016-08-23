title Spring Security Service

SET JHOME=%JAVA_HOME%
set JAVA_HOME=%SPRING_CLOUD_JAVA_HOME%
echo %JAVA_HOME%

set APP_PORT=8083
set MANGEMENT_PORT=9083
set EUREKA_SERVER_URL=http://test-eureka:test-password@localhost:8761/eureka

REM Starting Security Service
mvn clean package spring-boot:run -Dspring.profiles.active=security -Dmaven.test.skip=true  -DEUREKA_SERVER_URL=%EUREKA_SERVER_URL% -DAPP_PORT=%APP_PORT% -DMANGEMENT_PORT=%MANGEMENT_PORT%

SET JAVA_HOME=%JHOME%
