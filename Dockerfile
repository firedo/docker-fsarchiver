FROM phusion/baseimage:jammy-1.0.0

ENV DEBIAN_FRONTEND noninteractive

# Set correct environment variables
ENV HOME /root
ENV TERM xterm

# Fix a Debianism of the nobody's uid being 65534
RUN usermod -u 99 nobody && \
usermod -g 100 nobody && \

RUN apt-get update -q

# Install required tools
RUN apt-get install -qy fsarchiver nano screen

VOLUME /data

# Keep the container running indefinately
CMD ["tail", "-f", "/dev/null"]
