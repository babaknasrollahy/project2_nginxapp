FROM nginx:latest

WORKDIR /app
COPY ./app/ .
RUN bash starter.sh


