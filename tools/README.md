```bash
adb push parted /sbin
adb push mkfs.ext4 /sbin
adb shell "chmod 777 /sbin/parted /sbin/mkfs.ext4"
```
