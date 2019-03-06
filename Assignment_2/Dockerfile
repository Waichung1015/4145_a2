FROM alpine:latest
RUN apk add python3-dev\
&& pip3 install --upgrade pip
RUN set -e; \
        apk add --no-cache --virtual .build-deps \
                gcc \
                libc-dev \
                linux-headers \
                mariadb-dev \
                python3-dev \
                postgresql-dev \
        ;
WORKDIR /app
COPY . /app
COPY . /app/templates

RUN pip3 --no-cache-dir install -r requirements.txt

CMD ["python3", "./app.py"]