# Use the official Jenkins LTS image as a base
FROM jenkins/jenkins:lts

# Set the Jenkins home directory and increase the JVM heap size
ENV JENKINS_HOME /var/jenkins_home
ENV JAVA_OPTS="-Xmx2048m"

# Expose the Jenkins port
EXPOSE 8080
