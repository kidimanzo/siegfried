
FROM imanzo/centos-go

RUN set -ex &&\
    go get github.com/richardlehane/siegfried/cmd/sf &&\
    cd /go/src/github.com/richardlehane/siegfried &&\
    git checkout v1.6.5 &&\
    sf -update
RUN sf -serve 0.0.0.0:513
RUN yum install -y java
RUN git clone https://github.com/kidimanzo/springBoot.git
RUN cd springBoot 
ENTRYPOINT java -jar siegfired-0.1.0.jar >siegfried.log 2>&1   /bin/bash

