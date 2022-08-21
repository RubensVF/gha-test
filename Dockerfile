FROM maven:3.8.3-openjdk-17  AS MAVEN_BUILD

COPY pom.xml /build/
COPY src /build/src/

WORKDIR /build/
RUN mvn -DskipTests=true package

FROM openjdk:17-alpine

WORKDIR /app

COPY --from=MAVEN_BUILD /build/target/ecommerce-api-0.0.1-SNAPSHOT.jar /app/

ENTRYPOINT ["java", "-jar", "ecommerce-api-0.0.1-SNAPSHOT.jar"]