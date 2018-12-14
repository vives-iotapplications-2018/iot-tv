FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /iot-tv
WORKDIR /iot-tv
COPY Gemfile /iot-tv/Gemfile
COPY Gemfile.lock /iot-tv/Gemfile.lock
RUN bundle install
COPY . /iot-tv