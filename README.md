# debezium-example

After starting the container, be sure to configure the Postgres connector: `curl http://localhost:8083/connectors -H "Content-Type: application/json" -d @docker/kafka/config/postgres-connector.json`

You can then use the Kafka UI container for a basic overview: http://localhost:8080/

