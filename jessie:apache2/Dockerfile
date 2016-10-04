FROM debian:jessie
MAINTAINER aven725

ARG USERNAME=cloud
ARG USERPASSWD=cloud1004

# change package source list.
#RUN echo "deb http://mirror.cs.nchu.edu.tw/debian/ jessie main non-free contrib" > /etc/apt/sources.list && \
#    echo "deb http://mirror.cs.nchu.edu.tw/debian/ jessie-updates main contrib non-free" >> /etc/apt/sources.list $
#    echo "deb http://security.debian.org/ jessie/updates main contrib non-free" >> /etc/apt/sources.list

# mirror taiwan
RUN echo "deb http://ftp.tw.debian.org/debian/ stable main non-free contrib" > /etc/apt/sources.list && \
    echo "deb http://security.debian.org/ jessie/updates main contrib non-free" >> /etc/apt/sources.list

# update package list and install package
RUN apt-get update -y ; apt-get install -y net-tools supervisor apache2 openssh-server sudo ; \
    mkdir /var/run/sshd

COPY supervisord.conf /etc/supervisor/supervisord.conf

# Add user
RUN useradd -ms /bin/bash ${USERNAME} ; echo "${USERNAME}:${USERPASSWD}" | chpasswd ; \
#    echo "${USERNAME}	ALL=(ALL:ALL) ALL" >> /etc/sudoers
    echo "${USERNAME}	ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER ${USERNAME}
WORKDIR /home/${USERNAME}

CMD sudo supervisord -c /etc/supervisor/supervisord.conf
