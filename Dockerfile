FROM tomcat:latest

LABEL Author="Sri" \
      Version="v1.0"

RUN rm -f usr/local/tomcat/webapps/*

COPY /*.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh","run"]
