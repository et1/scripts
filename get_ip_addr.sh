#! /bin/bash

ifconfig eth0|grep 'inet addr'|awk '{print $2}'|cut -d':' -f2

