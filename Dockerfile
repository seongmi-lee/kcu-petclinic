FROM eclipse-temurin:17-jre
WORKDIR /app

#JAR은 CI Runner에서 Maven으로 빌드하고, Dockerfile은 만들어진 JAR만 복사
COPY build/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
