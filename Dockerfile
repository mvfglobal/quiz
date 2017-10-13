FROM zaargy/mvf-apache-php7.1

WORKDIR /app
ADD composer.json /app/composer.json
ADD composer.lock /app/composer.lock
RUN composer install --no-scripts

ADD . /app
