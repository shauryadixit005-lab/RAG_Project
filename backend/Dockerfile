# ==============================================================================
# Standalone Backend Dockerfile for Render Web Service
# DocuQuery AI - ARYA AI&DS Spring Boot RAG Backend
# ==============================================================================

FROM maven:3.9.9-eclipse-temurin-21-alpine AS builder
WORKDIR /app
COPY pom.xml ./
COPY src ./src/
RUN mvn clean package -DskipTests

FROM eclipse-temurin:21-jre-alpine
WORKDIR /app
RUN addgroup -S raggroup && adduser -S raguser -G raggroup
USER raguser

COPY --from=builder --chown=raguser:raggroup /app/target/*.jar app.jar

ENV PORT=8080
ENV JAVA_OPTS="-Xms256m -Xmx512m -XX:+UseG1GC"
EXPOSE 8080

ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -Dserver.port=${PORT:-8080} -jar app.jar"]
