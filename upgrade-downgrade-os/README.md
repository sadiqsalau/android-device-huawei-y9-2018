You can use this method to move from Emui 8 to Emui 9 or downgrade from Emui 9 to Emui 8 without sdcard or OTG.


Warning: You will lose your files.


Requirements:
1. Extracted firmware images e.g `system.img`, `vendor.img` - Extract files with `splituapp` from `UPDATE.app`
2. `update_sd.zip` file inside firmware `dload` folder.


Guide:

1. Flash the TWRP that can copy files via MTP - `twrp_p10_lite_0.4.img`
2. Format all data with TWRP
3. Copy `update_sd.zip` via MTP to device
4. Flash the second TWRP than can flash any zip file - `TWRP-3.4.0.0-emui9_eR.img`
5. Reboot to the new TWRP and install `update_sd.zip`
6. Device might reboot after flashing.
7. Now reflash partitions with fastboot.
