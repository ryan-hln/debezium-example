#!/usr/bin/env bash
set -e

psql -v ON_ERROR_STOP=1 --username "${POSTGRES_USER}" --dbname "${POSTGRES_DB}" <<-EOSQL
  SELECT pg_create_physical_replication_slot('repl_slot');
  CREATE USER debezium WITH ENCRYPTED PASSWORD '321muizebed' REPLICATION LOGIN;
  CREATE DATABASE debezium;
  GRANT ALL PRIVILEGES ON DATABASE debezium TO debezium;
EOSQL

