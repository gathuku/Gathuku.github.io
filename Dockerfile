# Build from
From alpine:3.8

#update package
RUN apk update

#install Ruby
RUN apk add ruby=2.5.5-r0 git ruby-dev build-base zlib-dev ruby-json

RUN apk add ruby-bigdecimal
RUN apk add ruby-webrick


# Install bundle
RUN gem install bundler -N


# Copy the current directory contents into the container at /app
COPY . /app

# set mount point
VOLUME /app

# Set the working directory to /app
WORKDIR /app

# install app dependencies form Gemfile
RUN bundle install
RUN bundle update


# exposed port / make it available to outside world of the container
EXPOSE 4000

# run server
ENTRYPOINT ["bundle", "exec","jekyll","serve"]
CMD ["-H", "0.0.0.0"]
