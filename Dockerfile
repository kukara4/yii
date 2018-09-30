FROM centos:centos7
LABEL vendor=ABMCloud

# Args

ARG ruby_version=2.4.4

# Install system packages

RUN yum install -y epel-release
RUN yum upgrade -y
RUN yum install -y curl \
    which \
    git \
    catdoc \
    xls2csv \
    postgresql-libs \
    postgresql-devel \
    pygpgme \
    openssh \
    openssh-server \
    openssh-clients \
    openssl-libs \
    libcurl-devel \
    vim \
    net-tools \
    telnet \
    mc \
    wget \
    zip

