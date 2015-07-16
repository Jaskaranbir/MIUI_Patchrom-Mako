#This script auto applies the required fixes to final zip
#Please run only after fullota
#========================================================

cd fixes
zip -g -r ../out/fullota.zip META-INF
