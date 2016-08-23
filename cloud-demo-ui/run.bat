title Build Cloud UI

SET JHOME=%JAVA_HOME%
set JAVA_HOME=%SPRING_CLOUD_JAVA_HOME%
echo %JAVA_HOME%

set BUILD_PROFILE=%1
set DEPLOY_FOLDER=C:/Spring Cloud/Static Location/resources

REM initialize-frontend, install-component, build profile
IF "%BUILD_PROFILE%" == "" (
	SET BUILD_PROFILE=build
)

SET BUILD_PROFILE_CONFIG=
IF "%BUILD_PROFILE%" == "build" (
	SET BUILD_PROFILE_CONFIG=-Dbuild="debug-deploy --targetFolder \"%DEPLOY_FOLDER%\" "
)

REM Starting Config Server
call mvn validate -P%BUILD_PROFILE%  %BUILD_PROFILE_CONFIG%

SET JAVA_HOME=%JHOME%