#!/bin/bash

sudo dtrace -q  -c 'ruby main.rb' -s trace.dt
