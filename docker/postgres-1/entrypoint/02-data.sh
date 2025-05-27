#!/usr/bin/env bash
set -e

psql -v ON_ERROR_STOP=1 --username debezium --dbname debezium <<-EOSQL
  CREATE TABLE debezium_test_1 (
    id SERIAL PRIMARY KEY,
    data VARCHAR(255) NOT NULL,
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NOW(),
    modified_at TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NOW()
  );

  ALTER TABLE debezium_test_1 REPLICA IDENTITY FULL;
  INSERT INTO debezium_test_1 (data, is_active) VALUES ('Test Row 1', true);
  INSERT INTO debezium_test_1 (data, is_active) VALUES ('Test Row 2', false);

  CREATE TABLE debezium_test_2 (
    data VARCHAR(255) NOT NULL,
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NOW(),
    modified_at TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NOW()
  );

  ALTER TABLE debezium_test_2 REPLICA IDENTITY FULL;
  INSERT INTO debezium_test_2 (data, is_active) VALUES ('Test Row 3', true);
  INSERT INTO debezium_test_2 (data, is_active) VALUES ('Test Row 4', false);
EOSQL

