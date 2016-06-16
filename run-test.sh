#!/bin/bash

./app.py &> /tmp/flasklog.log &
sleep 3
links2 -g http://localhost:5000 &
PID=$!
sleep 3
kill $PID

kill $(ps aux | egrep '.*python.*app.py$' | awk '{ print $2 }')

cat /tmp/flasklog.log
grep "Errno 11" /tmp/flasklog.log

