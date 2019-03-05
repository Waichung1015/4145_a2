FROM alpine:latest
RUN apk add --no-cache python3-dev \
    && pip3 install --upgrade pip
 
RUN apk add mariadb-dev \
            libc-dev \
	    linux-headers \
	    postgresql-dev \
	    gcc 

WORKDIR /app
COPY . /app
COPY templates /app/templates

RUN pip3 --no-cache-dir install -r requirements.txt
EXPOSE 5000
CMD ["python3", "./Assignment 2.py"]
