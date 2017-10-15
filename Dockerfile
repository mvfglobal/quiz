FROM zaargy/mvf-apache-php7.1

COPY composer.json /app
COPY composer.lock /app

ADD . /app

ADD scripts/bashrc /root/.bashrc

RUN composer install
