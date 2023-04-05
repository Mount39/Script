#!/bin/bash
code1=$(ps -aux | grep ring.sh | head -n1 |  awk '{print $2}')
kill -9 $code1

