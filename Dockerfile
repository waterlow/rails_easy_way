FROM ruby:3.2.2

WORKDIR /rails

ARG DATABASE_URL

ENV RAILS_ENV="production" \
    BUNDLE_DEPLOYMENT="1" \
    BUNDLE_PATH="/usr/local/bundle" \
    BUNDLE_WITHOUT="development" \
    DATABASE_URL=$DATABASE_URL

COPY Gemfile Gemfile.lock /rails/
RUN bundle install

COPY . /rails/

ENTRYPOINT ["/rails/bin/docker-entrypoint"]
EXPOSE 3000
CMD ["./bin/rails", "server"]

