FROM danielguerra/ubuntu-xrdp:20.04

ARG FULL_NAME
ARG USERNAME
ARG PASSWORD

ENV FULL_NAME=${FULL_NAME}
ENV USERNAME=${USERNAME}
ENV PASSWORD=${PASSWORD}

RUN adduser --disabled-password --gecos "${FULL_NAME},,," "${USERNAME}" \
  && echo "${USERNAME}:${PASSWORD}" | chpasswd \
  && echo "${USERNAME} ALL=(ALL:ALL) ALL" >> /etc/sudoers
