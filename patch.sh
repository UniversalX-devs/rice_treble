echo "
Disclaimer! This is a janky script I put together in like 5 minutes LMAO!
But it should work!"

sleep 5

echo "Setting up patch layouts in for contributors..."
mkdir ./rice_treble/patches/lynix ./rice_treble/patches/chon ./rice_treble/patches/naz ./rice_treble/patches/ph ./rice_treble/patches/pon ./rice_treble/patches/tre
mv ./rice_treble/patches/personal ./rice_treble/patches/lynix/patches
mv ./rice_treble/patches/chondoe ./rice_treble/patches/chon/patches
mv ./rice_treble/patches/nazim ./rice_treble/patches/naz/patches
mv ./rice_treble/patches/phh ./rice_treble/patches/ph/patches
mv ./rice_treble/patches/ponces ./rice_treble/patches/pon/patches
mv ./rice_treble/patches/trebledroid ./rice_treble/patches/tre/patches

echo "Patching with script"
echo "Lynix"
sleep 2
bash ./rice_treble/apply.sh ./rice_treble/patches/lynix
echo "Chondoe"
sleep 2
bash ./rice_treble/apply.sh ./rice_treble/patches/chon
echo "Nazim"
sleep 2
bash ./rice_treble/apply.sh ./rice_treble/patches/naz
echo  "Phh"
sleep 2
bash ./rice_treble/apply.sh ./rice_treble/patches/ph
echo "Ponces"
sleep 2
bash ./rice_treble/apply.sh ./rice_treble/patches/pon
echo "trebledroid"
sleep 2
bash ./rice_treble/apply.sh ./rice_treble/patches/tre

echo "Shitty script completed. Have fun!"


