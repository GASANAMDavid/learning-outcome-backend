FROM ruby:3.0.2
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /docker-learning-outcome
WORKDIR /docker-learning-outcome
COPY Gemfile /docker-learning-outcome/Gemfile
COPY Gemfile.lock /docker-learning-outcome/Gemfile.lock
RUN bundle install
COPY . /docker-learning-outcome/

# Add a script to be executed every time the container starts.
COPY /bin/entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]