FROM openjdk:8-jdk-alpine
COPY ./target/kubernetes-configmap-reload-0.0.1-SNAPSHOT.jar /app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
#done
