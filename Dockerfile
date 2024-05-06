FROM ruby:3.2.2

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

ENV RAILS_ENV development

USER nobody:nogroup

EXPOSE 3000

CMD [ "rails", "server", "-b", "0.0.0.0" ]
