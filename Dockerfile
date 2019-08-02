FROM python:3.7

RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
RUN curl https://packages.microsoft.com/config/ubuntu/19.04/prod.list > /etc/apt/sources.list.d/mssql-release.list

RUN apt update
RUN apt install -y unixodbc-dev tdsodbc sqsh

RUN apt-get ACCEPT_EULA=Y install msodbcsql17
RUN apt-get install unixodbc-dev
