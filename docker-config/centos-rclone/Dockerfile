# =============================================================================
# based on experience coming from cetres/centos-apache-php
#
# CentOS-7, rclone
#
# =============================================================================
FROM centos:centos7
LABEL maintainer="Luca Mastrobuono <lucamastrobuono1972@gmail.com>"

RUN yum -y update && \
    yum -y install \
        epel-release && \
    yum -y install rclone 

