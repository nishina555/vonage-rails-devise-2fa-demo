FROM ruby:2.7.1

RUN apt-get update -qq && \
    apt-get install -y nodejs \
                       npm && \
    npm install -g yarn
WORKDIR /vonage-rails-devise-2fa-demo
COPY Gemfile* /vonage-rails-devise-2fa-demo/
RUN bundle install
