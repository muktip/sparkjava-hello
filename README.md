This is an example of creating and executing a java docker container. It consists of a jar of the java application, the source code of the java application and Dockerfile to build a docker image.

## SparkJavaPlay
Spark Java is a micro framework for creating web applications in Java 8 with minimal effort.
This is a basic spark java application that exposes a light weight hello world api. Learn more [here](http://sparkjava.com/documentation#getting-started).  `sparkJavaPlay.jar` has been generated off the source code for the SparkJavaPlay application that is used by the docker container.

## Docker
Dockerfile has been written to execute the above mentioned SparkJavaPlay application. The docker file uses jdk8 as a base image and execute the java application, exposing 4567 port to make the api available.

# Getting started:
* Build an image of the Dockerfile named
    *my-java-app*:  `docker build -t my-java-app .`
* Run a docker container in detached mode(-d) with that image and expose 4567 port to expose the api:
    `docker run -d -p 4000:4567 my-java-app`
* Test the api by running the following command that should return 'Hello mukti':
    `curl http://localhost:4000/hello/mukti`
* Stop the docker container when done:
    `docker container stop <container-id>`
