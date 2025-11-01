FROM node:20-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install --include=dev
COPY . .

EXPOSE 3000

CMD ["npx", "ts-node", "src/index.ts"]

