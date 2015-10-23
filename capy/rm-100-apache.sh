#!/bin/bash

for i in `seq 1 100`; do docker stop apache$i; docker rm apache$i; done
