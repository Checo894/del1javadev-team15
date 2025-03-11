FROM openjdk:17-jdk-slim
WORKDIR /del1javadev-team15
COPY /target/*.jar del1javadev-team15.jar
COPY /src/main/resources/Wallet_ociDatabase /del1javadev-team15/Wallet_ociDatabase
ENV TNS_ADMIN=/del1javadev-team15/Wallet_ociDatabase
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "del1javadev-team15.jar" ]