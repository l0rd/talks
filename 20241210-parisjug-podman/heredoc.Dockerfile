FROM docker.io/redhat/ubi9-minimal as builder

RUN <<EOF
microdnf update
microdnf -y install gcc
microdnf -y install glibc-static
microdnf -y install procps-ng
EOF
