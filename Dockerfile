FROM ruby:3.0

ENV LANG C.UTF-8

# m1 mac
RUN wget --quiet -O - /tmp/pubkey.gpg https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo 'deb http://dl.yarnpkg.com/debian/ stable main' > /etc/apt/sources.list.d/yarn.list

RUN apt-get update -y -qq && \
    apt-get install -y build-essential libpq-dev nodejs yarn \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /app

ENV APP_ROOT /app
WORKDIR $APP_ROOT

RUN gem install rails -v 6.1.5

# ADD ./user_bash_profile /root/.bash_profile

# バックグラウンド起動用
# CMD [ "tail", "-f", "/dev/null" ]
