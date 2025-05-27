CREATE TABLE debezium_test_1 (
  id INTEGER PRIMARY KEY,
  data VARCHAR(255) NOT NULL,
  is_active BOOLEAN NOT NULL DEFAULT TRUE,
  created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NOW(),
  modified_at TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NOW()
);

INSERT INTO debezium_test_1 (id, data, is_active) VALUES (1, 'Test Row 1', true);
INSERT INTO debezium_test_1 (id, data, is_active) VALUES (2, 'Test Row 2', false);

CREATE TABLE debezium_test_2 (
  id INTEGER PRIMARY KEY,
  data VARCHAR(255) NOT NULL,
  is_active BOOLEAN NOT NULL DEFAULT TRUE,
  created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NOW(),
  modified_at TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NOW()
);

INSERT INTO debezium_test_2 (id, data, is_active) VALUES (1, 'Test Row 3', true);
INSERT INTO debezium_test_2 (id, data, is_active) VALUES (2, 'Test Row 4', false);


