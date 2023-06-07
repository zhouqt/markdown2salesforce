FROM python:alpine

WORKDIR /app

COPY *.py requirements.txt ./

RUN apk add libmagic && \
  pip install -r requirements.txt

ENTRYPOINT ["./md2sf.py"]


