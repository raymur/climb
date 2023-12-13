FROM ubuntu:latest
WORKDIR /usr/app/src
COPY requirements.txt .
RUN set -xe \
    && apt-get update -y\
    && apt-get install python3-pip -y
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY climb.py .
EXPOSE 5000
ENTRYPOINT ["python3", "climb.py"]
