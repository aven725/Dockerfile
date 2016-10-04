FROM aven725/openvswitch:2.6.0v1
MAINTAINER aven725

COPY supervisord.conf /etc/supervisor/supervisord.conf

CMD supervisord -c /etc/supervisor/supervisord.conf

    
