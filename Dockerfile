FROM ruby:2.7.1

RUN apt-get update -qq && \
    apt-get install -y nodejs \
                       npm && \
    npm install -g yarn
WORKDIR /app
COPY Gemfile* /app/
RUN bundle install
