FROM rancher/jenkins-slave

# setup our local files first
ADD docker-wrapper.sh /usr/local/bin/docker-wrapper

# add tools for cicd
# rancher cli & cihelper
ADD cihelper /usr/local/bin/cihelper
ADD rancher /usr/local/bin/rancher
