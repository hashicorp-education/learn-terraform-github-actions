# Use a minimal base image
FROM alpine:latest

# Define the message as an environment variable
ENV MESSAGE="Hello, this is a message from the Docker container!"

# Set the command to echo the message
CMD echo $MESSAGE
