#!/bin/bash

sudo dtrace -c '/Users/jacobcarlborg/development/c/ruby/build/ruby main.rb' -s trace.dt
