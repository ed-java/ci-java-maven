# Etapa 1: construir o projeto com Maven
FROM maven:3.9.4-eclipse-temurin-21 AS build

WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN mvn clean package -DskipTests

# Etapa 2: imagem final com apenas o jar
FROM eclipse-temurin:21-jdk

WORKDIR /app

COPY --from=build /app/target/ci-java-maven-1.0-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
