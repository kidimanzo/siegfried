
FROM imanzo/centos-go

RUN set -ex &&\
    go get github.com/richardlehane/siegfried/cmd/sf &&\
    sf -update
ENTRYPOINT sf -serve 0.0.0.0:19000 && /bin/bash
