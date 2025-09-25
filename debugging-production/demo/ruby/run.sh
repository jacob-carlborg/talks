#!/bin/bash

sudo dtrace -c 'ruby main.rb' -s trace.dt
