# From DockerHub using Node 14...
FROM node:14

# Create app directory
WORKDIR /app

# Copy the package.json and the package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Bundle app source
COPY . .

EXPOSE 8080

CMD [ "npm", "start" ]
