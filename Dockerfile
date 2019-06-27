FROM python:3.7

RUN \
  curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - \
  curl https://packages.microsoft.com/config/ubuntu/18.10/prod.list > /etc/apt/sources.list.d/mssql-release.list \
  
RUN \
  apt-get update
  ACCEPT_EULA=Y apt-get install unixodbc-dev
  ACCEPT_EULA=Y apt-get install msodbcsql17
