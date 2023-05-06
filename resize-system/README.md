* Dangerous

Ensure you have your firmware ready to reflash. Don't rush. Battery charged at least 50%. Read prompts carefully. 
Do not reboot your device until all partitions have been recreated !!!!!!


The script to use depends on your Android Version.

Android-8-Emui-8 = parted-resize-emui-8.sh

Android-9-Emui-9 = parted-resize-emui-9.sh


First push `parted` to `sbin` - Go to the `tools` folder

Now Push script to `/tmp` - Replace `[name]` with the right script 

```bash
adb push [name] /tmp
```

Execute script - When prompted reply with `Ok` or `Ignore` or `Yes` (Depends). !!!!! Don't rush. 

The first command might fail, so when prompted to enter a partition number, enter `56` for Emui 8 (Android 8) or `59` for Emui 9 (Android 9). That will remove the `userdata` partition.

```bash
adb shell
/tmp/[name]
```




Note: Ensure to reflash partitions after resizing.. 

Reflash partitions from `system` to `userdata`. E.g `fastboot flash system system.img`
