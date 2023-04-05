#!/bin/bash
while true;do
	find /recycle -mtime +30 -exec rm -rf {} \;
	sleep 1
done

