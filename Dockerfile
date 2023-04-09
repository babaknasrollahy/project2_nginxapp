FROM nginx:latest

WORKDIR /app
COPY ./app/ .

ENTRYPOINT ["bash", "starter.sh"]
