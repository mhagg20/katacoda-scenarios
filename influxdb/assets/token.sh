#!/bin/bash
echo "test"
influx auth create --org org --all-access > all_access_token.txt
export INFLUX_TOKEN=$(grep -G -o -e [a-zA-Z0-9_.-]*== all_access_token.txt | head -n 2)