#!/bin/bash

docker stop couchdb

docker rm couchdb

docker run -itd -p 5984:5984 \
    --name couchdb \
    -e COUCHDB_USER=admin \
    -e COUCHDB_PASSWORD=password \
    -e COUCHDB_SECRET=secret \
    -e NODENAME=couchdb \
    -e COUCHDB_ERLANG_COOKIE=secure_cookie_value \
    -v ~/couchdb/data:/opt/couchdb/data \
    --rm \
    homerjam/couchdb-clouseau