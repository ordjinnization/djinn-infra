FROM influxdb:1.2.2
ADD config/influxdb.conf /etc/influxdb/
ADD init.sh /var/tmp/init.sh
RUN /var/tmp/init.sh

