FROM openjdk:17-buster
LABEL maintainer="Preston Lee <preston.lee@prestonlee.com>"

# Install native compilation dependencies.
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y gcc g++ make apt-utils

# Install Jekyll for Ubuntu/Debian: https://jekyllrb.com/docs/installation/ubuntu/
RUN apt-get install -y ruby-full build-essential zlib1g-dev
RUN gem install -N jekyll bundler

# Install Node from NodeSource.
RUN curl -sL https://deb.nodesource.com/setup_15.x | bash -
RUN apt-get install -y nodejs

RUN mkdir /app
WORKDIR /app

# Install the FHIR Shorthand transfiler:
RUN npm i -g fsh-sushi

# Download the IG publisher.
# RUN curl https://fhir.github.io/latest-ig-publisher/org.hl7.fhir.publisher.jar -o input-cache/org.hl7.fhir.publisher.jar --create-dirs
RUN curl https://storage.googleapis.com/ig-build/org.hl7.fhir.publisher.jar -o input-cache/org.hl7.fhir.publisher.jar --create-dirs

RUN ls -alh

