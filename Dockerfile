FROM ghcr.io/uprise-fin/ci-sample:base-0.0.2 AS base

RUN deluser sync && deluser shutdown && deluser halt
RUN echo "export TMOUT=600"  >> /etc/profile
RUN chmod 400 /etc/shadow

COPY ./ ./
RUN pip install -r requirements.txt
ENTRYPOINT ["python", "app.py"]
