FROM python:3.7

RUN \
  curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - \
  curl https://packages.microsoft.com/config/ubuntu/18.10/prod.list > /etc/apt/sources.list.d/mssql-release.list \
  
RUN \
  apt update
  apt install -y unixodbc-dev
  apt install -y msodbcsql17
