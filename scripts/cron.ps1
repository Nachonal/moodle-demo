$cid = (docker ps -q -f "name=moodle")
docker exec -it $cid bash -lc "php /bitnami/moodle/admin/cli/cron.php"
