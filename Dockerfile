FROM centos:centos7
LABEL vendor=ABMCloud

# Args

ARG ruby_version=2.4.4

# Install system packages

RUN yum install -y epel-release
