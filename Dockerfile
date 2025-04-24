FROM node:18-alpine

WORKDIR /app

COPY . .

# Serwowanie statycznych plików za pomocą http-server
RUN npm install -g http-server

EXPOSE 8080

CMD ["http-server", "-p", "8080"]
