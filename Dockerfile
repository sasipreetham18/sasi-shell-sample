# Use official Ubuntu as base image
FROM ubuntu:latest

# Set maintainer info
LABEL maintainer="sasipreetham18@gmail.com"

# Install necessary packages
RUN apt update && apt install -y bash

# Copy shell script into container
COPY menu.sh /menu.sh

# Make the script executable
RUN chmod +x /menu.sh

# Run the script by default when container starts
CMD ["/menu.sh"]

