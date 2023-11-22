FROM ubuntu:jammy

COPY sources.list /etc/apt/sources.list
RUN apt update && apt install -y build-essential fakeroot devscripts dh-make gawk \
	pkg-config git bc bison flex libssl-dev libelf-dev