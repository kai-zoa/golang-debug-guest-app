FROM golang:1.5.2

MAINTAINER kai-zoa "kai.zoa1@gmail.com"

ENV PATH /go/bin:${PATH}

ENV gdbDependencies\
 apt-transport-https ca-certificates\
 lxc iptables gdb

RUN apt-get update -yqq\
 && apt-get upgrade -y\
 && apt-get install -fyqq ${gdbDependencies}\
 && apt-get autoremove -yqq\
 && apt-get clean\
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
 && echo add-auto-load-safe-path /usr/local/go/src/pkg/runtime/runtime-gdb.py > ~/.gdbinit

VOLUME /go/bin

ENTRYPOINT ["bash"]
