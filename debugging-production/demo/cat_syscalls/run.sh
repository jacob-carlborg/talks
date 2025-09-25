#!/bin/bash

sudo dtrace -c 'cat foo.txt' -s trace1.bt
