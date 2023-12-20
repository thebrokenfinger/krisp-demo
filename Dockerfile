FROM node:14

LABEL maintainer="Yatharth K <yatharth01@gmail.com>"
LABEL version="0.1.0"
LABEL description="Dockerfile for the Krisp demo app"

WORKDIR /app

COPY . /app/

RUN npm install
RUN npm install pm2 -g

CMD ["pm2-runtime", "npm", "--", "start"]

EXPOSE 3000
