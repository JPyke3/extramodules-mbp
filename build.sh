#Prepare build folder
mkdir build

#bbswitch
cd bbswitch
makepkg -s --sign
mv *.pkg* ../build
rm -rf src/ pkg/

#broadcom-wl
cd ../broadcom-wl
makepkg -s --sign
mv *.pkg* ../build
rm -rf src/ pkg/

#virtualbox-guest-module
cd ../virtualbox-modules
makepkg -s --sign
mv *.pkg* ../build
rm -rf src/ pkg/

#spl_zfs
cd ../spl_zfs
makepkg -s --sign
mv *.pkg* ../build
rm -rf src/ pkg/

#apple-bce
cd ../apple-bce
makepkg -s --sign
mv *.pkg* ../build
rm -rf src/ pkg/

#macbook12-spi-driver
cd ../macbook12-spi-driver-dkms
makepkg -s --sign
mv *.pkg* ../build
rm -rf src/ pkg/
