#!/bin/bash
if [ "$(wget --spider -S "http://localhost" 2>&1 > /dev/null | grep "HTTP/" | awk '{print $2}')" = "200" ]; then
 exit 0
  else
 exit 1
fi
