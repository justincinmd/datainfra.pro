FROM ubuntu:bionic
EXPOSE 6543

RUN apt-get update && apt-get install -y python3.6 python3-pip python3-venv

RUN mkdir /app
WORKDIR /app
RUN chown nobody:nogroup /app

USER nobody

RUN python3.6 -m venv venv

ADD requirements.txt .
RUN venv/bin/pip install -r requirements.txt

COPY . /app

CMD /app/venv/bin/python /app/main.py
