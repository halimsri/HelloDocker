FROM ubuntu:14.04

MAINTAINER halimsri

RUN apt-get update && apt-get install -y oracle-java8-installer maven

ADD . /usr/local/helloworld

RUN cd /usr/local/helloworld && mvn install

CMD ["java", "-cp", "/usr/local/helloworld/target/helloworld-1.0.jar", "HelloWorld"]