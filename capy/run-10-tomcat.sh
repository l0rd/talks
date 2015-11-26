#!/bin/bash

for i in `seq 1 10`; do docker run -d -P --name tomcat$i tomcat; done
