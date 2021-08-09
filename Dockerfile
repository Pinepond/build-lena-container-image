FROM docker.io/lenasupport/lena-manager:1.3.1.2-centos7-jdk8-openjdk


# create account
RUN chgrp -R 0 ${LENA_HOME} && chmod -R g=u ${LENA_HOME}