# Use a base image
FROM node:14 AS build

# Set working directory
WORKDIR /app

# Copy application code
COPY package*.json ./
RUN npm install
COPY . .

# Build the application
RUN npm run build

# Use nginx to serve the app
FROM nginx:alpine
COPY --from=build /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
