#!/bin/bash

for i in `seq 1 10`; do docker stop tomcat$i; docker rm tomcat$i; done
