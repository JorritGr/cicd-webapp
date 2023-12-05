#!/bin/bash

# Function to check if a service is ready
wait_for_service() {
  echo "Waiting for $1 to be ready..."
  while ! nc -z "$2" "$3"; do
    sleep 1
  done
  echo "$1 is ready!"
}

# Wait for the database service
wait_for_service "database" "database" "27017"

# Run the tests once the database is ready
exec "${@:2}"

