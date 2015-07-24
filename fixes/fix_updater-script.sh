# This script auto applies the required fixes to final zip
# This script is automatically executed during build process
#========================================================

# Wait till fullota zip is generated
while [ ! -f out/fullota.zip ]
do
  sleep 2
done

# Now apply updater-script fix
echo "Waiting for final permission settings before applying fix"
sleep 8
echo "Applying updater-script fix"
cd fixes
zip -g -r ../out/fullota.zip META-INF
echo "Building zip complete, now you can flash it in recovery"
echo "Press Ctrl+C to finish"
