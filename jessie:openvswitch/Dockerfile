FROM debian:jessie
MAINTAINER aven725

# change package source list.
#RUN echo "deb http://mirror.cs.nchu.edu.tw/debian/ jessie main non-free contrib" > /etc/apt/sources.list && \
#    echo "deb http://mirror.cs.nchu.edu.tw/debian/ jessie-updates main contrib non-free" >> /etc/apt/sources.list && \
#    echo "deb http://security.debian.org/ jessie/updates main contrib non-free" >> /etc/apt/sources.list

# mirror taiwan
RUN echo "deb http://ftp.tw.debian.org/debian/ stable main non-free contrib" > /etc/apt/sources.list && \
    echo "deb http://security.debian.org/ jessie/updates main contrib non-free" >> /etc/apt/sources.list

# update package list and install package
RUN apt-get update -y ; apt-get install -y net-tools supervisor

#COPY supervisord.conf /etc/supervisor/supervisord.conf

#CMD supervisord -c /etc/supervisor/supervisord.conf

    
