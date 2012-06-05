#!/bin/bash
now=$(date +"%Y%m%d_%H%M")
cp -f arch/arm/boot/zImage AnyKernel/kernel/
cp -f drivers/net/wireless/bcm4325/wireless.ko AnyKernel/system/lib/modules/
cp -f drivers/net/tun.ko AnyKernel/system/lib/modules/
cd AnyKernel
zip -r ./../marco-${now}.zip *
cd ..
mv marco-${now}.zip AnyKernel/

