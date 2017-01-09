FROM java:8
VOLUME /tmp

ADD build/libs/spring-config-server.jar /app/

RUN bash -c 'touch /app/spring-config-server.jar'
ENTRYPOINT ["java","-jar","/app/spring-config-server.jar"]

EXPOSE 8888