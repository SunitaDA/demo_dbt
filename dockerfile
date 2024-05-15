FROM python:3.10-slim-buster

WORKDIR /usr

COPY . .
COPY profiles /usr/app/profiles

RUN pip install --upgrade pip
RUN pip install dbt-Snowflake
 
 
