FROM centos:centos7
MAINTAINER Robert Nowotniak <rnowotniak@gmail.com>

COPY salt.repo /etc/yum.repos.d/salt.repo
RUN yum -y install salt-master salt-minion

COPY run.sh /root/run.sh
RUN chmod 755 /root/run.sh


CMD ["bash", "/root/run.sh" ]

