FROM nginx:latest

WORKDIR /app
COPY ./app/ .

CMD [ "bash" , "starter.sh" ]
ENTRYPOINT [ "bash", "/docker-entrypoint.sh" ]

