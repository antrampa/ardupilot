#!/bin/bash

./waf configure --debug
./waf copter
rm callgrind.out.*
valgrind --tool=callgrind build/sitl/bin/arducopter  -M+ --disable-fgview
kcachegrind callgrind.out.*

