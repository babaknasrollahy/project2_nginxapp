FROM nginx:latest

WORKDIR /app
COPY ./app/ .

CMD ["bash", "starter.sh"]
