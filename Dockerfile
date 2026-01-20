# Use the latest version of Node
FROM node:22-slim

# Create a folder for the bot
WORKDIR /app

# Copy your package.json and install everything
COPY package.json ./
RUN npm install

# Copy all your other files (index.js, public folder, etc.)
COPY . .

# Tell the world we use port 8000
EXPOSE 8000

# Start the bot
CMD ["node", "index.js"]
