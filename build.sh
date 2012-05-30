#!/bin/bash -x
CYANOGENMOD=../../..

# Make mrproper
make mrproper

# Set config
make latona_galaxysl_defconfig
#make menuconfig
# Make modules
nice -n 10 make -j16 modules

# Copy modules
find -name '*.ko' -exec cp -av {} $CYANOGENMOD/device/samsung/galaxysl/modules/ \;

# Build kernel
nice -n 10 make -j16 zImage

# Copy kernel
cp arch/arm/boot/zImage $CYANOGENMOD/device/samsung/galaxysl/kernel

# Make mrproper
make mrproper

