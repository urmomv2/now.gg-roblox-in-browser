FROM node:20-alpine
WORKDIR /app
COPY . .
RUN ls -la   # <-- THIS WILL SHOW EVERY FILE RAILWAY DOWNLOADED
RUN npm install --omit=dev
EXPOSE 3000
ENV PORT=3000
CMD ["npm", "start"]
