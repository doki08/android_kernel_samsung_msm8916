#!/bin/bash

################################################################################
#
# Build Script
#
# Copyright Samsung Electronics(C), 2010
#
################################################################################

################################################################################
# Common Path
################################################################################

export CROSS_COMPILE=~/media/doki/bc6b2d6d-2ba1-4594-a060-d679668ea1a4/gcc/linux-x86/arm/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-
export ARCH=arm
mkdir output
make -C $(pwd) O=output msm8916_sec_defconfig VARIANT_DEFCONFIG=msm8916_sec_heat_eur_defconfig SELINUX_DEFCONFIG=selinux_defconfig TIMA_DEFCONFIG=tima8916_defconfig 
make -C $(pwd) O=output 
