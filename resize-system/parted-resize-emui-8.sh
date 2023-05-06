parted /dev/block/mmcblk0 rm 56
parted /dev/block/mmcblk0 rm 55
parted /dev/block/mmcblk0 rm 54
parted /dev/block/mmcblk0 rm 53
parted /dev/block/mmcblk0 rm 52
parted /dev/block/mmcblk0 rm 51

# System
parted /dev/block/mmcblk0 mkpart system ext4 1074MB 9074MB
parted /dev/block/mmcblk0 name 51 system
parted /dev/block/mmcblk0 set 51 msftdata on


# Cust
parted /dev/block/mmcblk0 mkpart cust ext4 9074MB 9324MB
parted /dev/block/mmcblk0 name 52 cust
parted /dev/block/mmcblk0 set 52 msftdata on

# Version
parted /dev/block/mmcblk0 mkpart version ext4 9324MB 9364MB
parted /dev/block/mmcblk0 name 53 version
parted /dev/block/mmcblk0 set 53 msftdata on

# Vendor 
parted /dev/block/mmcblk0 mkpart vendor ext4 9364MB 10264MB
parted /dev/block/mmcblk0 name 54 vendor
parted /dev/block/mmcblk0 set 54 msftdata on

# Product
parted /dev/block/mmcblk0 mkpart product ext4 10264MB 10514MB
parted /dev/block/mmcblk0 name 55 product
parted /dev/block/mmcblk0 set 55 msftdata on

# Userdata
parted /dev/block/mmcblk0 mkpart userdata ext4 10514MB 62.5GB
parted /dev/block/mmcblk0 name 56 userdata
parted /dev/block/mmcblk0 set 56 msftdata on


mkfs.ext4 /dev/block/mmcblk0p56
mkfs.ext4 /dev/block/mmcblk0p55
mkfs.ext4 /dev/block/mmcblk0p54
mkfs.ext4 /dev/block/mmcblk0p53
mkfs.ext4 /dev/block/mmcblk0p52
mkfs.ext4 /dev/block/mmcblk0p51