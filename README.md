# Spring Cloud Demo

This is Spring Cloud Demo application

### Eureka Server
      
    -DAPP_PORT=8761
       
### Config Server
      
    -DCONFIG_SERVER_GIT_URI=<CONFIG_SERVER_URL>   -DGIT_URI_USERNAME=   -DGIT_URI_PASSWORD= -DEUREKA_SERVER_URL=http://test-eureka:test-password@localhost:8761/eureka  -DAPP_PORT=8084 -DMANGEMENT_PORT=9084
       
### Security Service
      
    -DEUREKA_SERVER_URL=http://test-eureka:test-password@localhost:8761/eureka  -DAPP_PORT=8083 -DMANGEMENT_PORT=9083
       
### Test Service
      
    -DEUREKA_SERVER_URL=http://test-eureka:test-password@localhost:8761/eureka  -DAPP_PORT=8087 -DMANGEMENT_PORT=9087
       
### Web Server
      
    -DEUREKA_SERVER_URL=http://test-eureka:test-password@localhost:8761/eureka  -DAPP_PORT=8888 -DMANGEMENT_PORT=9888  -DSTATIC_RESOURCE_LOCATION="file:///<STATIC_LOCATION_URL>/"
    


## UI Build
   
### Install Node, NPM, Bower, Gulp
  
    validate -Pinitialize-frontend

### Load NPM and Bower Dependency
  
    validate -Pinstall-component
  
### Build UI Application
  
    validate -Pbuild -Dbuild="debug-deploy --targetFolder \"C:/Users/sneha/Desktop/STATIC_CONTENT/resources\" "
