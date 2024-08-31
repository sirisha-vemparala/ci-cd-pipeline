# Use an official Maven image to build the application
FROM maven:3.8.5-openjdk-17 AS build

# Set the working directory
WORKDIR /app

# Copy the Maven project files
COPY pom.xml .
COPY src /app/src

# Build the application
RUN mvn package

# Use an official OpenJDK image to run the application
FROM openjdk:17-jdk

# Set the working directory
WORKDIR /app

# Copy the built JAR file from the build stage
COPY --from=build /app/target/myapp.jar /app/myapp.jar

# Expose port 8080
EXPOSE 8080

# Define the command to run the application
CMD ["java", "-jar", "myapp.jar"]

