FROM python:3.9.10-alpine
COPY ./requirements.txt ./requirements.txt
RUN pip install -r requirements.txt

