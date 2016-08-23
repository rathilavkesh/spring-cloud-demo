title Spring Test Service

SET JHOME=%JAVA_HOME%
set JAVA_HOME=%SPRING_CLOUD_JAVA_HOME%
echo %JAVA_HOME%

set APP_PORT=8087
set MANGEMENT_PORT=9087
set EUREKA_SERVER_URL=http://test-eureka:test-password@localhost:8761/eureka

REM Starting Test Service
mvn clean package spring-boot:run -Dmaven.test.skip=true  -DEUREKA_SERVER_URL=%EUREKA_SERVER_URL% -DAPP_PORT=%APP_PORT% -DMANGEMENT_PORT=%MANGEMENT_PORT%

SET JAVA_HOME=%JHOME%