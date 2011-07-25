#!/bin/bash

find ~/kernel/linux-2.6_p1_cdma-hc/ -name '*.ko' -exec cp -v {} ~/kernel/hc-sgt_initramfs/lib/modules \;
echo "`find ~/kernel/linux-2.6_p1_cdma-hc/ -name '*.ko' | wc -l` module(s) copied"
