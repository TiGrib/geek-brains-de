FROM tiangolo/uwsgi-nginx-flask:python3.6-alpine3.7
RUN apk --update add bash nano
ENV STATIC_URL /static
ENV STATIC_PATH /app/static
COPY ./flask_app/requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt