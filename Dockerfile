
FROM imanzo/centos-go

RUN set -ex &&\
    go get github.com/richardlehane/siegfried/cmd/sf &&\
    sf -update
ENTRYPOINT sf -serve localhost:19000 && /bin/bash
