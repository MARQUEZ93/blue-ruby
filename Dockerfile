# Dockerfile

FROM ruby:latest

RUN apt-get update && apt-get install -y build-essential

# Create a directory inside the container to store the app files
WORKDIR /app

# The container's /app directory will be mapped to the local current directory (where the Dockerfile is located)
VOLUME /app

# Start the container with the provided command
CMD ["ruby", "test.rb"]
