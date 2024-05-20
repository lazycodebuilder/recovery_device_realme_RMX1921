#!/system/bin/sh

set_permissive()
{
  setenforce 0
}

firmware_check()
{
  if grep -q androidboot.prjname /proc/cmdline; then
      echo "I:postrecoveryboot: Detected realme UI 2 firmware" > /tmp/recovery.log
      resetprop ro.device.latest_fw true
	  
  else
      echo "I:postrecoveryboot: Detected realme UI 1 firmware" > /tmp/recovery.log
      resetprop ro.device.latest_fw false
  fi
}

properties()
{
  echo "I:postrecoveryboot: Setting up props for $CODENAME" > /tmp/recovery.log
  resetprop "ro.boot.prjname" "$PRJNAME"
  resetprop "ro.build.product" "$CODENAME"
  resetprop "ro.product.name" "$CODENAME"
  resetprop "ro.product.model" "$CODENAME"
  resetprop "ro.product.device" "$CODENAME"
  resetprop "ro.product.product.device" "$CODENAME"
  resetprop "ro.vendor.product.device.oem" "$CODENAME"
  resetprop "ro.commonsoft.ota" "$PRJNAME"
  resetprop "ro.separate.soft" "$PRJNAME"
}

load_properties()
{
  PRJNAME=19651
  CODENAME=RMX1921
  properties
}

set_permissive
firmware_check
load_properties

exit 0