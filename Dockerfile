FROM alpine:edge
RUN apk update
RUN apk add \
	groff \
	less \
	py-pip \
	python \
		&& pip install awscli
RUN apk add \
	ca-certificates \
	terraform
RUN apk add \
	jq \
	lastpass-cli \
	openssh
WORKDIR /root
