#!/bin/bash

./app.py &> /tmp/flasklog.log &
sleep 1
phantomjs test.js

kill $(ps aux | egrep '.*python.*app.py$' | awk '{ print $2 }')

cat /tmp/flasklog.log
grep "Errno 11" /tmp/flasklog.log

