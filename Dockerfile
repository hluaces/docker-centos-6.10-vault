FROM centos:6

COPY CentOS-6.10-Vault.repo /etc/yum.repos.d/

RUN rm /etc/yum.repos.d/CentOS-Base.repo \
        && yum clean all

