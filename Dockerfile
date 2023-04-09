FROM nginx:latest

WORKDIR /app
COPY ./app/ .
RUN bash starter.sh && echo "echo '$HOSTNAME' >> /etc/nginx/html/index.html" >>/docker-entrypoint.sh 

ENTRYPOINT [ "bash", "/docker-entrypoint.sh" ]

