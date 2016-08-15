FROM java:8
VOLUME /tmp
ADD spring-eureka.jar /app.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-jar","/app.jar"]