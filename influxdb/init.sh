#!/bin/bash
mkdir /opt/influxdb
influxd &
sleep 5
curl -XPOST http://localhost:8086/query --data-urlencode "q=CREATE DATABASE cadvisor"
