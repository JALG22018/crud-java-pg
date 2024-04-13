FROM maven:3.9.6-eclipse-temurin-17-focal


WORKDIR /app


COPY . .


RUN mvn clean package -DskipTests


EXPOSE 8080


CMD ["java", "-jar", "target/crud-0.0.1-SNAPSHOT.jar"]