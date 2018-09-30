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

# Install rvm/ruby

RUN curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -
RUN curl -L get.rvm.io | bash -s stable
RUN /usr/local/rvm/bin/rvm reload
RUN /usr/local/rvm/bin/rvm requirements run
RUN /usr/local/rvm/bin/rvm install ${ruby_version}
RUN /usr/local/rvm/bin/rvm alias create default ruby-${ruby_version}
