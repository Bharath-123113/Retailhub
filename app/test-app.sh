#!/bin/bash
# Test for the RetailHub sample app

OUTPUT=$(bash app/retailhub.sh)

if echo "$OUTPUT" | grep -q "Welcome to RetailHub" && echo "$OUTPUT" | grep -q "Version: 1.0.0"; then
  echo "TEST PASSED"
  exit 0
else
  echo "TEST FAILED"
  exit 1
fi
