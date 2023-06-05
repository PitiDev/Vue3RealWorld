# Dockerfile

# BUILD STAGE
FROM node:16-alpine

# Set timezone
# Always have Bangkok timezone file beside Dockerfile
RUN echo "Asia/Bangkok" > /etc/timezone && date

WORKDIR /app

COPY package*.json .
RUN npm install

COPY . .
COPY .env.development .env

RUN npm run generate

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000

EXPOSE 3000

CMD ["npm", "run", "start"]
