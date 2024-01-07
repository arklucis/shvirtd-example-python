#!/bin/bash

cd /home/achernov/shvirtd-example-python/
docker run --rm --entrypoint "" -v $PWD/backup:/backup --link="b7ea85af32e0:alias" --net backend  schnitzler/mysqldump mysqldump --opt -h alias -u flask  -proot "--result-file=/backup/dumps.sql" web
