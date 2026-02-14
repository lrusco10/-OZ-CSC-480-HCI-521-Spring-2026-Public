# Build stage
FROM maven:3.9-eclipse-temurin-11 AS builder
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package

# Runtime stage
FROM icr.io/appcafe/open-liberty:kernel-slim-java11-openj9-ubi
COPY --chown=1001:0 src/main/liberty/config /config/
RUN features.sh
COPY --chown=1001:0 --from=builder /app/target/*.war /config/apps/
RUN configure.sh