# Use the official lightweight Node.js image
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if it exists)
COPY package*.json ./

# Install only production dependencies
RUN npm ci --only=production

# Copy the rest of your static files (HTML, CSS, JS, assets)
COPY . .

# Expose the port your app runs on
EXPOSE 3000

# Set the default port environment variable
ENV PORT=3000

# Start the server
CMD ["npm", "start"]
