FROM ruby:2.7.1

RUN apt-get update -qq && \
    apt-get install -y nodejs \
                       npm && \
    npm install -g yarn
WORKDIR /docker-rails6-web-mysql8-boilerplate
COPY Gemfile* /docker-rails6-web-mysql8-boilerplate/
RUN bundle install
