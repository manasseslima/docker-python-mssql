FROM python:3.7

RUN apt update
RUN apt install unixodbc-dev tdsodbc sqsh
