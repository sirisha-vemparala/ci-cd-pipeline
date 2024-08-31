# CI/CD Pipeline for AWS ECS

# Overview

This repository contains a GitHub Actions CI/CD pipeline for deploying a simple web application to AWS ECS (Elastic Container Service). The pipeline automates the process of building, pushing Docker images, and deploying applications. It also includes integration tests and rollback functionality to ensure reliability and stability.

# Project Structure

- `.github/workflows/ci-cd-pipeline.yml`: GitHub Actions workflow file that defines the CI/CD pipeline.
- `Dockerfile`: Dockerfile used to build the Docker image.
- `src/`: Source code of the web application.
- `README.md`: This documentation file.

# Prerequisites

- **JDK 11**: Java Development Kit version 11.
- **Maven 3**: Apache Maven version 3 for build automation.
- **MySQL 8**: MySQL version 8 for database management.

## Technologies

- **Spring MVC**: Framework for building web applications.
- **Spring Security**: Framework for securing web applications.
- **Spring Data JPA**: Library for working with databases using JPA.
- **Maven**: Build automation tool.
- **JSP**: JavaServer Pages for creating dynamic web content.
- **Tomcat**: Web server and servlet container.
- **MySQL**: Relational database management system.
- **Memcached**: Distributed memory caching system.
- **RabbitMQ**: Message broker for communication between applications.
- **ElasticSearch**: Search and analytics engine.

## Database

This project uses MySQL as the database. To set up the database, you need to import the SQL dump file provided in this repository.

### SQL Dump File

- **Path**: `/src/main/resources/db_backup.sql`
- **Description**: This file is a MySQL dump containing the database schema and data. 

### Importing the SQL Dump

To import the dump file into your MySQL server, use the following command:

```bash
mysql -u <user_name> -p accounts < /src/main/resources/db_backup.sql


