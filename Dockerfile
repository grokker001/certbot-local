FROM python:3.8-alpine3.11

ENTRYPOINT [ "certbot" ]

RUN pip install --upgrade pip
RUN apk add libffi libssl1.1 openssl ca-certificates binutils gcc linux-headers openssl-dev musl-dev libffi-dev
RUN pip install certbot