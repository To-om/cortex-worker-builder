FROM python:3

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY build /usr/local/bin

VOLUME /var/lib/docker

ENTRYPOINT /usr/local/bin/build
