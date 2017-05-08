
FROM imanzo/centos-go

RUN set -ex &&\
    go get github.com/richardlehane/siegfried/cmd/sf &&\
    cd /go/src/github.com/richardlehane/siegfried &&\
    git checkout v1.6.5 &&\
    sf -update &&\
    nohup sf -serve 0.0.0.0:513&
RUN set -ex &&\
    yum install -y java &&\
    git clone https://github.com/kidimanzo/springBoot.git &&\
    cd springBoot 
ENTRYPOINT  /bin/bash

