FROM centos:7
RUN yum install -y https://www.pgpool.net/yum/rpms/4.3/redhat/rhel-7-x86_64/pgpool-II-release-4.3-1.noarch.rpm
RUN yum install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm

RUN yum install -y postgresql14-server

RUN yum install -y vim && yum install -y net-tools && yum install -y curl
RUN yum install -y iputils-ping && yum install -y iputils-arping && yum install -y ifupdown && yum install -y iproute2
#RUN yum install -y lsb-release
#RUN yum install -y wget
#RUN yum install -y gnupg2
#RUN yum install -y openssh-server
#RUN sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
#RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
#RUN apt-get update
#RUN DEBIAN_FRONTEND=noninteractive apt-get -y install pgpool2 libpgpool2 postgresql-13-pgpool2
