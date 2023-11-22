FROM ubuntu:jammy

COPY sources.list /etc/apt/sources.list
COPY canonical-certs.pem /usr/local/src/debian/
COPY canonical-revoked-certs.pem /usr/local/src/debian/
RUN apt update && \
	apt install -y 	build-essential git bc bison flex libssl-dev libelf-dev \
					fakeroot devscripts dh-make gawk pkg-config cpio rsync