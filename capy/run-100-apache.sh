#!/bin/bash

for i in `seq 1 100`; do docker run -d --name apache$i httpd; done
