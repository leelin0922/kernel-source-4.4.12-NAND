export PATH=$HOME/gcc-linaro-5.3-2016.02-x86_64_arm-linux-gnueabihf/bin:$PATH
export CROSS_COMPILE=arm-linux-gnueabihf-
export ARCH=arm

#make distclean
make am335x_sbc_7109_455_defconfig ARCH=arm
#make -j2 zImage modules am335x-sbc_7109_455.dtb
make -j2 zImage am335x-sbc_7109_455.dtb

cp ./arch/arm/boot/zImage /media/sf_share/7109/.
cp ./arch/arm/boot/dts/am335x-sbc_7109_455.dtb /media/sf_share/7109/.
sync

sleep 1
date
