FROM registry.saas.hand-china.com/tools/nginx:latest

MAINTAINER Feiwen

# copy 
COPY my-blog /usr/work
COPY build.sh /usr/work
COPY run.sh /usr/work

# RUN apt-get -qq update && DEBIAN_FRONTEND=noninteractive apt-get -qq install -y --no-install-recommends python-pygments git ca-certificates asciidoc    && rm -rf /var/lib/apt/lists/*

# Download and install hugo
# ENV HUGO_VERSION 0.44
# ENV HUGO_BINARY hugo_${HUGO_VERSION}_Linux-64bit.deb

# ADD hugo_0.44_Linux-64bit.deb /tmp/hugo.deb

# RUN dpkg -i /tmp/hugo.deb  && rm /tmp/hugo.deb



# Create working directory
# WORKDIR /usr/work/

# Download and install hugo
# RUN wget https://github.com/spf13/hugo/releases/download/v0.14/hugo_0.14_amd64.deb
# RUN dpkg -i hugo*.deb
# RUN apt-get install hugo

# hugo environment
# ENV HUGO_HOME /usr/work/hugo
# ENV PATH $HUGO_HOME:$PATH
ENV HUGO_BASE_URL "http://localhost:1313"

RUN echo "success~"
