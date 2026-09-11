# Use Nginx to serve static files
FROM nginx:alpine

# Set working directory to Nginx default
WORKDIR /usr/share/nginx/html

# Copy pre-built React app (dist folder) into Nginx
COPY dist/ .

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

