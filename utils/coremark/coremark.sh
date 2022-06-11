#!/bin/sh

/bin/coremark > /tmp/coremark.log

cat /tmp/coremark.log | grep "CoreMark 1.0" | cut -d  "/"  -f 1 > /etc/bench.log
sed -i 's/CoreMark 1.0/(CpuMark/g'  /etc/bench.log
echo " Scores)" >> /etc/bench.log
