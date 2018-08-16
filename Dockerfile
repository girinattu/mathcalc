FROM ruby:2.3.3
ARG RAILS_ENV=development
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /VishyApp
WORKDIR /VishyApp
COPY Gemfile /VishyApp/Gemfile
COPY Gemfile.lock /VishyApp/Gemfile.lock
RUN bundle install
COPY . /VishyApp