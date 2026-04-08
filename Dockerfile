FROM node:20-slim

# Install system dependencies (git for parsing repository, bash for shell tasks)
RUN apt-get update && apt-get install -y git bash && rm -rf /var/lib/apt/lists/*

# Define a stable root home layout so the Gemini CLI doesn't throw ENOENT on config dirs
ENV HOME=/app
RUN mkdir -p /app/.gemini

WORKDIR /workspace

# Install the agent tools
RUN npm install -g @google/gemini-cli @open-gitagent/gitagent

# Provide gitagent run as the default command
ENTRYPOINT ["npx", "--yes", "@open-gitagent/gitagent", "run"]
