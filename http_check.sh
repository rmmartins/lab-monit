#!/bin/bash
#/tmp/http_check.sh
if [ "$(wget --spider -S "http://localhost" 2>&1 | grep "HTTP/" | awk '{print $2}')" = "200" ]; then
 echo "HTTP response is OK"
 exit 0
  else
 echo "HTTP response with error"
 exit 1
fi
