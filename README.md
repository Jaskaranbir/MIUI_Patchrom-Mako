**Patchrom Build Process**
==========================

* Get Android SDK
------------------

In order to build patchrom project, you must have android sdk installed.(http://developer.android.com/sdk/installing.html)

And add the sdk tools and platform-tools to PATH.

    nano .bashrc
    export PATH=$PATH:/home/xxx/android-sdk/tools:/home/xxx/anroid-sdk/platform-tools

* Get base Code
----------------

* Create a directory for MIUI Patchrom (you can choose whichever directory you prefer). Once you `cd` in that directory:


   `mkdir Patchrom`
    
    `cd Patchrom`



* Initialize and sync MICode repo:

    `repo init -u git://github.com/MiCode/patchrom.git -b v6-kitkat`
    
    `repo sync`

* Get Nexus 4 (mako) code (or in other words, this repository)
---------------------------------------------------------------

* Create a directory for Nexus 4 and switch to it

   `mkdir nexus4`
   
   `cd nexus4`

* Get this repository

   `git clone https://github.com/Jaskaranbir/MIUI_Patchrom-Nexus4.git -b v6-kitkat`

* Building the ROM
-------------------

* Include the base build files

    `source ../build/envsetup.sh`

* Build the ROM

   `cd nexus4`
   
   `make fullota`

You will get the flashable zip "fullota.zip" inside the `out` folder. But do not flash this yet. We still need to do some minor fixes to get the ROM in basic working conditions.

* Applying fixes
----------------

* From file manager, go into the folder `.../Patchrom/nexus4/out` and open the file `fullota.zip` in an Archive Manager.

* Inside the archive, navigate to `META-INF/com/android` and delete the `updater-script` and replace it with the one provided in `fixes` folder in previous directory.

* With archive skill opened, navigate to the root of archive and go inside `system/app` folder and replace `miuisystem.apk` with the one provided in `fixes` folder in previous directory (the same thing as above, only with different file).

* The reason we need to do this is because in first case, the updater script doesn't set the permissions correctly and you may end up having no bootanimation, no wifi, no mobile network due to that. In second case, its just merely adding a mako xml file inside the apk (here's a hint: Open the miuisystem.apk (archive manager will work) and check out the "assets" folder in both the files (the one in `fixes` folder and the one in archive by default)).


================
After above, you can flash the `fullota.zip` in recovery. Make sure you have radio that supports 4.4.4 android version. And **Backup First**.
