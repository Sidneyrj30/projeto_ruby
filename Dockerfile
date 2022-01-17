FROM ruby:2.5

ENV USER_ID=1000
ENV APP_USER=user
ENV USER_HOME=/home/$APP_USER
ENV APP_HOME=/home/$APP_USER/web

RUN useradd -m -d $USER_HOME -u $USER_ID $APP_USER

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

USER $APP_USER

WORKDIR $APP_HOME

COPY Gemfile* $APP_HOME/

RUN bundle install

# Add a script to be executed every time the container starts.
COPY entrypoint.sh $APP_HOME

ENTRYPOINT ["./entrypoint.sh"]

EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]