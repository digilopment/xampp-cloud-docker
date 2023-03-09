#!/bin/bash

if [ -z "$1" ]; then
  echo "Please specify an SQL file to modify."
  exit 1
fi

# Create a backup of the original file
cp "$1" "${1}.bak"

# Replace all CREATE TABLE statements with CREATE TABLE IF NOT EXISTS
sed -i 's/^CREATE TABLE /CREATE TABLE IF NOT EXISTS /' "$1"

# Remove all DROP TABLE statements from the file
sed -i '/^DROP TABLE/d' "$1"

echo "Done. Original file backed up as ${1}.bak."
cat ${1} | head -n 100
