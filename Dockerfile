FROM tomcat

COPY ./book /usr/local/tomcat/webapps/ROOT/

CMD /usr/local/tomcat/bin/startup.sh && tail -f /usr/local/tomcat/logs/catalina.out
