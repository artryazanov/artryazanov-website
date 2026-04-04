# Use lightweight Nginx image
FROM nginx:alpine

# Remove default Nginx pages
RUN rm -rf /usr/share/nginx/html/*

# Copy custom Nginx configuration to enable SSI
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy all website files to the Nginx root directory
COPY . /usr/share/nginx/html/
