# Use the official Tomcat image as the base
FROM tomcat:9-jdk8-openjdk

# Copy the WAR file to the Tomcat webapps directory
COPY /var/lib/jenkins/workspace/Purdue_IGP/target/abctechnologies.war /usr/local/tomcat/webapps/

# Expose the default Tomcat port
EXPOSE 8080

# Starting the tomacat server
CMD ["catalina.sh", "run"]