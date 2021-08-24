FROM python:2.7
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/scr/app
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 80
VOLUME ["/app-data"]
CMD gunicorm -b : -c gunicorn.conf.py main:app
