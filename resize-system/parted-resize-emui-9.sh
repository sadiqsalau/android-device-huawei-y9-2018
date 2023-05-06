parted /dev/block/mmcblk0 rm 59
parted /dev/block/mmcblk0 rm 58
parted /dev/block/mmcblk0 rm 57
parted /dev/block/mmcblk0 rm 56
parted /dev/block/mmcblk0 rm 55
parted /dev/block/mmcblk0 rm 54
parted /dev/block/mmcblk0 rm 53
parted /dev/block/mmcblk0 rm 52

# System
parted /dev/block/mmcblk0 mkpart system ext4 1074MB 9074MB
parted /dev/block/mmcblk0 name 52 system
parted /dev/block/mmcblk0 set 52 msftdata on

# Preas
parted /dev/block/mmcblk0 mkpart preas ext4 9074MB 10274MB
parted /dev/block/mmcblk0 name 53 preas
parted /dev/block/mmcblk0 set 53 msftdata on

# Preavs
parted /dev/block/mmcblk0 mkpart preavs ext4 10274MB 10314MB
parted /dev/block/mmcblk0 name 54 preavs
parted /dev/block/mmcblk0 set 54 msftdata on


# Cust
parted /dev/block/mmcblk0 mkpart cust ext4 10314MB 10464MB
parted /dev/block/mmcblk0 name 55 cust
parted /dev/block/mmcblk0 set 55 msftdata on


# Version
parted /dev/block/mmcblk0 mkpart version ext4 10464MB 10504MB
parted /dev/block/mmcblk0 name 56 version
parted /dev/block/mmcblk0 set 56 msftdata on


# Vendor
parted /dev/block/mmcblk0 mkpart vendor ext4 10504MB 11154MB
parted /dev/block/mmcblk0 name 57 vendor
parted /dev/block/mmcblk0 set 57 msftdata on

# Product
parted /dev/block/mmcblk0 mkpart product ext4 11154MB 11754MB
parted /dev/block/mmcblk0 name 58 product
parted /dev/block/mmcblk0 set 58 msftdata on

# Userdata
parted /dev/block/mmcblk0 mkpart userdata ext4 11754MB 62.5GB
parted /dev/block/mmcblk0 name 59 userdata
parted /dev/block/mmcblk0 set 59 msftdata on


mkfs.ext4 /dev/block/mmcblk0p59
mkfs.ext4 /dev/block/mmcblk0p58
mkfs.ext4 /dev/block/mmcblk0p57
mkfs.ext4 /dev/block/mmcblk0p56
mkfs.ext4 /dev/block/mmcblk0p55
mkfs.ext4 /dev/block/mmcblk0p54
mkfs.ext4 /dev/block/mmcblk0p53
mkfs.ext4 /dev/block/mmcblk0p52