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

**Make sure to run `make clean` before running `make fullota` for next consecutive builds else fixes will fail to apply**

You will get the flashable zip "fullota.zip" inside the `out` folder. But do not flash this yet. We still need to do some minor fixes to get the ROM in basic working conditions.

================
After above, you can flash the `fullota.zip` in recovery. Make sure you have radio that supports 4.4.4 android version. And **Backup First**.

* Staying updated with my source
--------------------------------

I may often make changes to the source, to sync up the sources from your local directory with my repository, open terminal and `cd` into the device name directory (the one we created in [this][2] step) and run the command `git pull origin`. This will sync up the code.

* Submitting Bugs
-----------------

Check [this][3] for how to create issues.

-----------------------------------

Good Luck

=========
*Credits*

Jaskaranbir Singh (Me)

MIUI (for their MiCode)

Google (for Android)


  [1]: https://github.com/Jaskaranbir/MIUI_Patchrom-Nexus4/tree/v6-kitkat/fixes
  [2]: https://github.com/Jaskaranbir/MIUI_Patchrom-Nexus4#-get-nexus-4-mako-code-or-in-other-words-this-repository
  [3]: https://guides.github.com/features/issues/
