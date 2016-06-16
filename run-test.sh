#!/bin/bash
set -e

rm -f /tmp/flasklog.log

function test_case {
  ./app.py &>> /tmp/flasklog.log &
  sleep 1
  phantomjs test.js
  
  kill $(ps aux | egrep '.*python.*app.py$' | awk '{ print $2 }')
  
}

for i in $(seq 1 5); do
  echo "Run number ${i}"
  test_case
done

cat /tmp/flasklog.log
grep "Errno 11" /tmp/flasklog.log
