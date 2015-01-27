FROM octohost/build-do

RUN apt-get update && apt-get install -y build-essential

RUN apt-get install -y redis-server

RUN mkdir /srv/www
ADD . /srv/www

RUN eval "$(chef shell-init bash)" && gem install bundler && cd /srv/www && bundle install --deployment

EXPOSE 3000

CMD eval "$(chef shell-init bash)" && cd /srv/www && bundle exec foreman start
