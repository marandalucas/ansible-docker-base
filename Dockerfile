FROM centos:centos7
LABEL MAINTAINER Marcos Aranda

ARG VCS_REF
ARG BUILD_DATE

# Metadata
LABEL org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/marandalucas/ansible-docker-base" \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.docker.dockerfile="/Dockerfile"

ENV ANSIBLE_VERSION="2.4.3.0"

RUN yum clean all && \
    yum -y install epel-release && \
    yum -y install PyYAML python-jinja2 python-httplib2 python-keyczar python-paramiko python-setuptools git python-pip
RUN mkdir /etc/ansible/
RUN echo -e '[local]\nlocalhost' > /etc/ansible/hosts
RUN pip install ansible==$ANSIBLE_VERSION

# default command: display Ansible version
CMD [ "ansible-playbook", "--version" ]