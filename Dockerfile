From ubuntu:20.04
#RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN apt update
RUN apt install -y vim
RUN apt install -y net-tools
RUN apt install -y curl
RUN apt install -y iputils-ping
RUN apt install -y lsb-release
RUN apt install -y wget
RUN sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
#RUN curl -O -k https://www.postgresql.org/media/keys/ACCC4CF8.asc
#RUN apt-key add ACCC4CF8.asc
#RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN apt update
RUN apt -y install pgpool2 libpgpool2 postgresql-13-pgpool2
