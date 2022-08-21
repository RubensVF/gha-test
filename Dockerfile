FROM arm64v8/maven:3.8.6-openjdk-18  AS MAVEN_BUILD

COPY pom.xml /build/
COPY src /build/src/

WORKDIR /build/
RUN mvn -DskipTests=true package

FROM arm64v8/openjdk:17-ea-16-jdk

WORKDIR /app

COPY --from=MAVEN_BUILD /build/target/ecommerce-api-0.0.1-SNAPSHOT.jar /app/

ENTRYPOINT ["java", "-jar", "ecommerce-api-0.0.1-SNAPSHOT.jar"]