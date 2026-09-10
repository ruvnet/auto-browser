FROM mcr.microsoft.com/playwright:v1.63.0-noble
WORKDIR /app
COPY package*.json ./
RUN npm ci --ignore-scripts
COPY src ./src
USER pwuser
ENTRYPOINT ["node", "src/cli.js"]
CMD ["status"]
