FROM ubuntu:14.04
MAINTAINER Manny
WORKDIR /opt/service1
RUN apt-get update && apt-get install -y ruby ruby-dev curl
RUN gem install bundle
COPY . /opt/service1/
RUN ls -la
RUN bundle install
RUN sysctl net.ipv6.bindv6only
EXPOSE 9292
CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "9292"]
