#!/bin/bash

find ~/kernel/hc-sgt/ -name '*.ko' -exec cp -v {} ~/kernel/hc-sgt/lib/modules \;
echo "`find ~/kernel/hc-sgt/ -name '*.ko' | wc -l` module(s) copied"
