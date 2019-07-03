FROM python:3.7

RUN curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
RUN "deb [arch=amd64] https://packages.microsoft.com/ubuntu/18.04/prod bionic main" | sudo tee /etc/apt/sources.list.d/mssql-release.list

RUN apt update
RUN apt install unixodbc-dev
RUN apt install msodbcsql17
