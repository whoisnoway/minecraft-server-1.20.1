FROM alpine:latest
WORKDIR /server
EXPOSE 25565/tcp
RUN apk update && apk upgrade && apk add openjdk17-jre-headless
RUN wget https://raw.githubusercontent.com/whoisnoway/minecraft-server-1.20.1/main/fabric-installer-1.0.1.jar && wget https://raw.githubusercontent.com/whoisnoway/minecraft-server-1.20.1/main/server.properties && wget -c https://raw.githubusercontent.com/whoisnoway/minecraft-server-1.20.1/main/server.jar
RUN java -jar fabric-installer-1.0.1.jar server -mcversion 1.20.1
RUN java -jar fabric-server-launch.jar && sed -i 's/\w\+$/true/' eula.txt
CMD ["java", "-jar", "fabric-server-launch.jar"]