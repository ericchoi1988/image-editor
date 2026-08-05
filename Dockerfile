# Use the highly optimized, minimal Alpine Nginx build
FROM nginx:alpine

# Copy the static web application inside Nginx public directory
COPY index.html /usr/share/nginx/html/index.html

# Expose standard container web port
EXPOSE 80

# Command to ensure Nginx starts in the foreground
CMD ["nginx", "-g", "daemon off;"]