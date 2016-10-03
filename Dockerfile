FROM aven725/jessie:openvswitch-2.5.0v2
MAINTAINER aven725

COPY supervisord.conf /etc/supervisor/supervisord.conf

CMD supervisord -c /etc/supervisor/supervisord.conf

    
