#!/bin/bash

DATE=$(date +%m%d)
TIME=$(date +%I%M)
CONFIG="hc-sgt"
cd ~/kernel/linux-2.6_p1_cdma-hc

make mrproper
make clean

make ARCH=arm "$CONFIG"_defconfig
make -j16 CROSS_COMPILE=../arm-2009q3/bin/arm-none-linux-gnueabi- \

mkdir ../output
cp arch/arm/boot/zImage ~/kernel/output/"$DATE"_"$TIME"_"$CONFIG"_zImage

