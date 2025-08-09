FROM tomcat:9.0
COPY ./Hostem Management.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
