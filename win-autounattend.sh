isofolder=$(mktemp -d)
iso=win10_original.iso

echo [+] unzip ISO
7z x -o$isofolder $iso

echo [+] copy Autounattend.xml to root of ISO
cp Autounattend.xml $isofolder/Autounattend.xml

echo [+] add tools folder
cp -R ./tools $isofolder/.

echo [+] repack ISO
genisoimage -b boot/etfsboot.com -no-emul-boot -boot-load-size 8 -iso-level 2 -udf -joliet -D -N -relaxed-filenames -o ./win-autounattend.iso -allow-limited-size $isofolder

echo [+] cleanup
rm -rf $isofolder
