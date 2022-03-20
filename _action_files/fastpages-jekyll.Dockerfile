# Defines https://hub.docker.com/repository/docker/fastai/fastpages-jekyll
FROM jekyll/jekyll:4.0.0
ENV BUNDLE_PATH=$GEM_HOME

COPY . .
RUN chmod -R 777 .
RUN gem install bundler 
RUN jekyll build
