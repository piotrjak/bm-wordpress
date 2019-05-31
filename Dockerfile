FROM ubuntu:16.04
RUN apt update
RUN apt upgrade -y -qq
RUN apt install -y -qq php php-mysql

COPY wordpress /wordpress
CMD ["php", "-S", "0.0.0.0:80"]
