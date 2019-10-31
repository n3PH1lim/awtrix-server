FROM openjdk:12-alpine

# Download Awtrix Server jar
RUN apk add --no-cache wget
RUN wget -O /opt/awtrix.jar https://blueforcer.de/beta/awtrix.jar


# Web Ui Server Port
EXPOSE 7000

WORKDIR /opt

# Start Server
CMD ["java","-jar","/opt/awtrix.jar"]
