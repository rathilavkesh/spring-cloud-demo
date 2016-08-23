title Spring Config Server

SET JHOME=%JAVA_HOME%
set JAVA_HOME=%SPRING_CLOUD_JAVA_HOME%
echo %JAVA_HOME%

set APP_PORT=8084
set MANGEMENT_PORT=9084
REM set CONFIG_SERVER_GIT_URI="file:///C:/Users/502191217/Desktop/Static Location/ls_git"
set CONFIG_SERVER_GIT_URI=https://github.com/rathilavkesh/spring-config.git
set GIT_URI_USERNAME=rathilavkesh
set GIT_URI_PASSWORD=Love@1986
set EUREKA_SERVER_URL=http://test-eureka:test-password@localhost:8761/eureka

REM Starting Config Server
mvn clean package spring-boot:run -Dmaven.test.skip=true  -DCONFIG_SERVER_GIT_URI=%CONFIG_SERVER_GIT_URI% -DGIT_URI_USERNAME=%GIT_URI_USERNAME% -DGIT_URI_PASSWORD=%GIT_URI_PASSWORD% -DEUREKA_SERVER_URL=%EUREKA_SERVER_URL% -DAPP_PORT=%APP_PORT% -DMANGEMENT_PORT=%MANGEMENT_PORT%

SET JAVA_HOME=%JHOME%

