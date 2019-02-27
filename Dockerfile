FROM ruby:2.6.1

ENV RUBYOPT -EUTF-8

RUN apt-get update \
 && apt-get install -y apt-transport-https \
 && curl -sL https://deb.nodesource.com/setup_10.x | bash - \
 && apt-get install -y nodejs vim

WORKDIR /var/www/app

# for circleCI
ADD Gemfile /var/www/app/Gemfile
RUN bundle update