#!/usr/bin/env bash
set -e
CID=$(docker ps -q -f name=moodle)
docker exec -it "$CID" bash -lc "php /bitnami/moodle/admin/cli/cron.php"
