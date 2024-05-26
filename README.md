# Twrp Recovery Tree For Realme XT (RMX1921)

## Build Instructions
```sh
source build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
export PBRP_INCLUDE_FASTBOOTD=true
lunch pb_RMX1921-userdebug
mka pbrp | tree build.log
```

## Specifications

Component Type | Details
--------------:|:-------
SoC | Qualcomm Snapdragon 712 AIE (SDM712)
CPU | 2x 2.3 GHz Cortex-A75, 6x 1.7 GHz Cortex-A55 (Kryo 360)
GPU | Qualcomm Adreno 616, 610 MHz
RAM | 4 GB, 6 GB, 8 GB, 1866 MHz
Storage | 64 GB, 128 GB
Display | 6.4 in, Super AMOLED, 1080 x 2340 pixels, 24 bit
Dimensions | 75.2 x 158.7 x 8.6 mm
Battery | 4000 mAh, Li-Polymer
OS | ColorOS 6.0 (Android 9.0 Pie)

![Realme RMX1921](https://github.com/lazycodebuilder/devices/blob/bcf32bca8e218e4f5438268ae2801734cdf2b2df/RMX1921.png)

---
## Copyright notice
 ```
  /*
  * Copyright (C) 2024-2025 Android Open Source Project
  * Copyright (C) 2024-2025 The TeamWin Recovery Project
  *
  * SPDX-License-Identifier: Apache-2.0
  *
  */
  ```
