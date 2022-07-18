FROM ruby:2.6.3

WORKDIR /app
#WORKDIR /api

#COPY ./backend /api/
COPY ./backend /app/
#COPY ./ /app/

RUN apt-get update && apt-get install dos2unix -y

RUN find ./ -type f -exec dos2unix {} \;

RUN ln -s /usr/local/bin/ruby /usr/bin/ruby

RUN gem install bundler

RUN gem install foreman

RUN bundle update mimemagic

RUN bundle install

RUN export PATH=$PATH:/usr/local/bundle/bin/foreman

RUN chmod +x cmd.sh
#RUN rake db:create
#RUN rake db:migrate
#RUN rake db:seed

#CMD ["foreman", "start"]

CMD ["./cmd.sh"]

