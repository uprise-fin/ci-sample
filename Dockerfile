FROM ghcr.io/uprise-fin/ci-sample:base-0.0.2 AS base

RUN echo "sync shutdown halt lp uucp games ftp guest squid" | tr ' ' '\n' | xargs -I {} deluser {}
RUN echo "export TMOUT=600"  >> /etc/profile
RUN chmod 400 /etc/shadow

COPY ./ ./
RUN pip install -r requirements.txt
ENTRYPOINT ["python", "app.py"]
