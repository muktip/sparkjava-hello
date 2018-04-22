# Use an official Open JDK runtime as a parent image
FROM openjdk:8

# Set the working directory to /app
WORKDIR /usr/src/myapp

# Copy the current directory contents into the container at /app
COPY . /usr/src/myapp

# Make port 4567(spark java default rest endpoint) available to the world outside this container
EXPOSE 4567

CMD ["java", "-jar", "sparkJavaPlay.jar"]
