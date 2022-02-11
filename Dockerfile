FROM ghcr.io/uprise-fin/ci-sample:base-0.0.2 AS base
COPY ./ ./
RUN pip install -r requirements.txt
ENTRYPOINT ["python", "app.py"]
