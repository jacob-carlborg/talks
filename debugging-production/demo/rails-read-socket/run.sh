#!/bin/bash

sudo dtrace -q -s trace.dt -p "$1" -b 1g
