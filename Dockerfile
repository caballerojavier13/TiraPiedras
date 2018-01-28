FROM ruby:2.2

RUN apt-get update -qq && apt-get install -y build-essential