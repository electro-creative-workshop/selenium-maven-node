FROM selenium/standalone-chrome:3.141.59

USER root

RUN apt-get update && apt-get install -y \
	openjdk-8-jdk \
    ssh \
    git \
    maven \
    nano \
    build-essential\
    curl \
    zip && \
    apt-get clean

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install nodejs -y --force-yes
RUN apt-get install -y build-essential