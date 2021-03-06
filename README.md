# Spring Cloud Demo

This is Spring Cloud Demo application

## Prerequisite
 
  1. Install RabbitMQ from https://www.rabbitmq.com/
  2. Once RabbitMQ install. Enable rabbitmq management panel.<Br/>
      https://www.rabbitmq.com/management.html
  3. Add test user into it using Admin panel. <BR/>
      https://www.rabbitmq.com/management.html
  4. Install Docker Toolbox <BR/> https://www.docker.com/products/docker-toolbox

## How to Setup

### Eureka Server
      
   > -DAPP_PORT=8761
       
### Config Server
      
   > -DCONFIG_SERVER_GIT_URI=\<CONFIG_SERVER_URL\>   -DGIT_URI_USERNAME=\<CONFIG_SERVER_USERNAME\>   -DGIT_URI_PASSWORD=\<CONFIG_SERVER_PASSWORD\> -DEUREKA_SERVER_URL=http://test-eureka:test-password@localhost:8761/eureka  -DAPP_PORT=8084 -DMANGEMENT_PORT=9084
       
### Security Service
      
   > -DEUREKA_SERVER_URL=http://test-eureka:test-password@localhost:8761/eureka  -DAPP_PORT=8083 -DMANGEMENT_PORT=9083
       
### Test Service
      
   > -DEUREKA_SERVER_URL=http://test-eureka:test-password@localhost:8761/eureka  -DAPP_PORT=8087 -DMANGEMENT_PORT=9087
       
### Web Server
      
   > -DEUREKA_SERVER_URL=http://test-eureka:test-password@localhost:8761/eureka  -DAPP_PORT=8888 -DMANGEMENT_PORT=9888  -DSTATIC_RESOURCE_LOCATION="file:///\<STATIC_LOCATION_URL\>/"
    

## UI Build
   
### Install Node, NPM, Bower, Gulp
  
   > validate -Pinitialize-frontend

### Load NPM and Bower Dependency
  
  >  validate -Pinstall-component
  
### Build UI Application
  
   > validate -Pbuild -Dbuild="debug-deploy --targetFolder \"\<STATIC_LOCATION_URL\>\" "
    
    
## References
######  http://www.javaworld.com/article/2927920/cloud-computing/build-self-healing-distributed-systems-with-spring-cloud.html
######  Hystrix Configuaration: https://github.com/Netflix/Hystrix/wiki/Configuration#intro
