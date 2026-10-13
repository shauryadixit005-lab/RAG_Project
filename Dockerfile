# ==============================================================================
# Multi-Stage Dockerfile for Unified Fullstack Deployment on Render
# DocuQuery AI - ARYA AI&DS PBL RAG System
# ==============================================================================

# ------------------------------------------------------------------------------
# Stage 1: Build Modern React Frontend with Vite & TypeScript
# ------------------------------------------------------------------------------
FROM node:20-alpine AS frontend-builder
WORKDIR /app/frontend

COPY frontend/package*.json ./
RUN npm install

COPY frontend/ ./
RUN npm run build

# ------------------------------------------------------------------------------
# Stage 2: Build Spring Boot 3 Java 21 Backend with Embedded Static Assets
# ------------------------------------------------------------------------------
FROM maven:3.9.9-eclipse-temurin-21-alpine AS backend-builder
WORKDIR /app

# Copy Maven descriptor
COPY backend/pom.xml ./backend/

# Copy backend source code
COPY backend/src ./backend/src/

# Embed the compiled React frontend into Spring Boot's static resources
COPY --from=frontend-builder /app/frontend/dist ./backend/src/main/resources/static/

# Package executable JAR
RUN cd backend && mvn clean package -DskipTests

# ------------------------------------------------------------------------------
# Stage 3: Lightweight Production Runtime Container
# ------------------------------------------------------------------------------
FROM eclipse-temurin:21-jre-alpine
WORKDIR /app

# Non-root user for security
RUN addgroup -S raggroup && adduser -S raguser -G raggroup
USER raguser

# Copy JAR from build stage
COPY --from=backend-builder --chown=raguser:raggroup /app/backend/target/*.jar app.jar

# Environment defaults (Render dynamically overrides PORT)
ENV PORT=8080
ENV SPRING_PROFILES_ACTIVE=prod
ENV JAVA_OPTS="-Xms256m -Xmx512m -XX:+UseG1GC"

EXPOSE 8080

HEALTHCHECK --interval=30s --timeout=5s --start-period=60s --retries=3 \
  CMD wget --no-verbose --tries=1 --spider http://localhost:${PORT:-8080}/actuator/health || exit 1

ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -Dserver.port=${PORT:-8080} -jar app.jar"]
