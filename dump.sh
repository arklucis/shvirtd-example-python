#!/bin/bash

# Database name
database="web"

# Get the current date and time
current_datetime=$(date +"%Y-%m-%d_%H-%M-%S")

docker run --rm --entrypoint "" -v /opt/backup:/backup --link="2757af1b542e:alias" --net backend schnitzler/mysqldump mysqldump --opt -h alias -u flask -proot "--result-file=/backup/${database}_${current_datetime}_dump.sql" "${database}"
