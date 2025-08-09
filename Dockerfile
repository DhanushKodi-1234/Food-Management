# Use Tomcat as base image
FROM tomcat:9.0

# Remove default ROOT web app
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your WAR file to Tomcat webapps as ROOT
COPY FoodManagement.war /usr/local/tomcat/webapps/ROOT.war

# Expose default Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
