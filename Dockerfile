FROM python:3.7

RUN apt update
RUN apt install -y unixodbc-dev tdsodbc sqsh
