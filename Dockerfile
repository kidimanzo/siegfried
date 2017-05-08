
FROM imanzo/centos-go

RUN set -ex &&\
    go get github.com/richardlehane/siegfried/cmd/sf &&\
    cd /go/src/github.com/richardlehane/siegfried &&\
    git checkout v1.6.5 &&\
    sf -update
ENTRYPOINT sf -serve 0.0.0.0:5138 && /bin/bash
