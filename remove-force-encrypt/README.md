* Pull fstab

```bash
adb pull /vendor/etc/fstab.hi6250
```


* Edit fstab

Open `fstab.hi6250` and remove `,fileencryption=aes-256-xts:aes-256-cts`


* Push updated fstab

```bash
adb push fstab.hi6250 /vendor/etc
```


You will need to reformat the userdata partition again..