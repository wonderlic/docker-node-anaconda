FROM node:10.15.3-slim
MAINTAINER Wonderlic DevOps <DevOps@wonderlic.com>

RUN \
	apt-get update && \
	apt-get install -y python3.5 python3-pip python3-setuptools python3-dev --no-install-recommends && \
	apt-get autoremove -y && \
	apt-get clean -y && \
	pip3 install -U pip && \
	ln -s /usr/bin/python3.5 /usr/bin/py3
