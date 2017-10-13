FROM zaargy/mvf-apache-php7.1

COPY composer.json /app
COPY composer.lock /app

ADD . /app

RUN composer install
