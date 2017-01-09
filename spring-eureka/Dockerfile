FROM java:8
VOLUME /tmp

ADD build/libs/spring-eureka.jar /spring-eureka.jar
RUN bash -c 'touch /spring-eureka.jar'

ENTRYPOINT ["java","-jar","/spring-eureka.jar"]

EXPOSE 8761