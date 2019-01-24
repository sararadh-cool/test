
FROM centos:7.5.1804

RUN yum install -y glib2 && yum install -y gnutls && yum install -y json-glib && yum install -y libsoup

RUN rpm -Uvh http://engci-maven-master.cisco.com/artifactory/talos-onbox-yum/centos/7/release/RPMS/x86_64/beaker-common-1.14.2.984-1.x86_64.rpm

RUN rpm -Uvh http://engci-maven-master.cisco.com/artifactory/talos-onbox-yum/centos/7/release/RPMS/x86_64/beaker-server-1.14.2.984-1.x86_64.rpm

RUN yum install -y initscripts

RUN /etc/init.d/beakerd start

RUN rpm -Uvh http://engci-maven-master.cisco.com/artifactory/talos-onbox-yum/centos/7/release/RPMS/x86_64/beaker-mod_updater-1.14.2.221-1.x86_64.rpm



