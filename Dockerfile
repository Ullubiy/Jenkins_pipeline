FROM maven:3.8.7
WORKDIR /app
COPY src /app/src
COPY pom.xml /app/pom.xml
RUN apt update
RUN apt install default-jdk -y
RUN apt install git -y
CMD ["mvn","-f","/app/pom.xml", "clean", "package"]