FROM python:alpine

WORKDIR /app

COPY requirements.txt ./

RUN apk add libmagic && \
  pip install -r requirements.txt

COPY md2sf.py /usr/local/bin

ENTRYPOINT ["/usr/local/bin/md2sf.py"]


