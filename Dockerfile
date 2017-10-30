FROM rancher/jenkins-slave

# setup our local files first
ADD docker-wrapper.sh /usr/local/bin/docker-wrapper
ADD wait-for-master.sh /usr/local/bin/wait-for-master
RUN chmod +x /usr/local/bin/docker-wrapper && \
    chmod +x /usr/local/bin/wait-for-master

# add tools for cicd
# rancher cli & cihelper
ADD cihelper /usr/local/bin/cihelper
ADD rancher /usr/local/bin/rancher

CMD wait-for-master /bin/bash /cmd.sh
