FROM python:3.9.10-alpine
COPY ./ ./
RUN pip install -r requirements.txt
ENTRYPOINT ["python", "app.py"]
