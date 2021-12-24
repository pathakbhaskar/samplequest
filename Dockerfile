FROM node:10
RUN apt-get update && apt-get install -y --no-install-recommends
WORKDIR /app
COPY . .
RUN chmod -R 777 .
ENV SECRET_WORD=Welcome
EXPOSE 3000
RUN npm install
CMD ["npm", "start"]