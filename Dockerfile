# Use a lightweight base image
FROM ubuntu:22.04

# Set working directory
WORKDIR /app

# Copy application files
COPY app/ .

# Make the script executable
RUN chmod +x server.sh

# Set a default environment variable
ENV APP_ENV=production

# Run the script when container starts
CMD ["./server.sh"]