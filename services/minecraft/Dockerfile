# Start with a basic Ubuntu image
FROM ubuntu:latest

# Install dependencies (e.g., curl for downloading the binary)
RUN apt-get update && apt-get install -y \
  curl \
  openssh-client \
  && rm -rf /var/lib/apt/lists/*

# Download the pinggy binary from the URL
RUN curl -L https://s3.ap-south-1.amazonaws.com/public.pinggy.binaries/cli/v0.1.7/linux/amd64/pinggy -o /usr/local/bin/pinggy

# Make the binary executable
RUN chmod +x /usr/local/bin/pinggy

# Set the working directory (optional, but helps for clarity)
WORKDIR /usr/local/bin

# Command to run the tunnel
CMD ["pinggy", "-p", "443", "-o", "StrictHostKeyChecking=no", "-o", "ServerAliveInterval=30", "-R0:192.168.8.206:19132", "udp@us.a.pinggy.io"]
