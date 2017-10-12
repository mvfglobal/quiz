FROM 116419993949.dkr.ecr.eu-west-1.amazonaws.com/mvf-apache-php7.1

WORKDIR /app
ADD composer.json /app/composer.json
ADD composer.lock /app/composer.lock
RUN composer install

ADD quiz.conf /etc/apache2/sites-available/quiz.conf
RUN a2ensite quiz

