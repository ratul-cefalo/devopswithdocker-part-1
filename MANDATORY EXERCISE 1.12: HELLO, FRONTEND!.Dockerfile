FROM node:16-slim

WORKDIR /app
COPY package.json package-lock.json ./

RUN ["npm", "install"]
RUN ["npm", "install", "-g", "serve"]

COPY . .
RUN ["npm", "run", "build"]

EXPOSE 5000
CMD serve -s -l 5000 build