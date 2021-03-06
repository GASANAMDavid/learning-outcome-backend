FROM ruby:3.0.2
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /learning-outcome-app-backend
WORKDIR /learning-outcome-app-backend
COPY Gemfile /learning-outcome-app-backend/Gemfile
COPY Gemfile.lock /learning-outcome-app-backend/Gemfile.lock
RUN bundle install
COPY . /learning-outcome-app-backend/

# Add a script to be executed every time the container starts.
COPY /bin/entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]