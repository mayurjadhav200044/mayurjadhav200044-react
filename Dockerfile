# Use the official Nginx image as the base image
FROM nginx:1.21

# Remove the default Nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy the contents of the `build` folder into the Nginx content directory
COPY ./build /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
