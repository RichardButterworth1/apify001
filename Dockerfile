# Use official Node.js LTS image
FROM node:20-alpine

WORKDIR /app

# Install deps first (better layer caching)
COPY package.json package-lock.json* ./
RUN npm install --omit=dev

# Copy source
COPY src ./src
COPY openapi.yaml .
COPY .env.example .
COPY README.md .

ENV NODE_ENV=production
EXPOSE 3000

CMD ["npm", "start"]
