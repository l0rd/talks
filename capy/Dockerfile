FROM ubuntu:14.04

# Create a user
RUN useradd -d /home/mario -m -s /bin/bash  -u 1000 mario
EPHEMERAL getent passwd mario 

# Change current user to mario
USER mario
EPHEMERAL bash -c "test $EUID -eq 1000"

CMD /bin/bash
