#!/usr/bin/env bash

docker exec mindbox_two_mariadb_1 /bin/sh -c 'mysql -u root -pvySOsih < /app/script.sql'