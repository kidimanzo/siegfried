
FROM centos:centos7

RUN set -ex &&\
  yum -y update &&\
  yum -y install epel-release &&\
  yum -y clean all
