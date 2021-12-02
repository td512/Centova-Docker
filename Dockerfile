FROM ubuntu:20.04
MAINTAINER "Theo M. <docker@theom.nz>"
RUN apt-get update && apt-get install -y wget && apt-get clean
EXPOSE 2199
EXPOSE 2197
EXPOSE 21
EXPOSE 80
EXPOSE 8000-10000
RUN touch /.install
COPY ENTRYPOINT /
ENTRYPOINT /ENTRYPOINT
