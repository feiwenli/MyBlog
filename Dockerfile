FROM registry.saas.hand-china.com/tools/nginx:latest

# Download and install hugo
ENV HUGO_VERSION 0.44
ENV HUGO_BINARY hugo_${HUGO_VERSION}_Linux-64bit.deb

ADD hugo_0.44_Linux-64bit.deb /tmp/hugo.deb

RUN dpkg -i /tmp/hugo.deb  && rm /tmp/hugo.deb

EXPOSE 1313