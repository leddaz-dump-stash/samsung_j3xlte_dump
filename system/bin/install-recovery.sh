#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/sdio_emmc/by-name/RECOVERY:15108096:421b0ee43410eb067801b1f68927a9b70b8a40d7; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/sdio_emmc/by-name/KERNEL:14118912:de208c21c99a87fe52ab52af443010813b929a1c EMMC:/dev/block/platform/sdio_emmc/by-name/RECOVERY 421b0ee43410eb067801b1f68927a9b70b8a40d7 15108096 de208c21c99a87fe52ab52af443010813b929a1c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
