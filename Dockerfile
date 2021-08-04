FROM docker.io/lenasupport/lena-manager:1.3.1.2-centos7-jdk8-openjdk


# create account
RUN adduser --uid 1000930000 lena
RUN chown -R lena:lena ${LENA_HOME}


# sudo auth setting
RUN yum install -y sudo && yum clean all
RUN usermod -aG wheel lena
## nopasswd sudo on - off this option in docker entry point
RUN sed -i 's/# %wheel/%wheel/g' /etc/sudoers

USER lena
