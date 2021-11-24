#!/bin/bash

#ubuntu
# Info
echo
echo Welcome to the Rom Builder.
echo This script aims to teach you the the terms and commands so you can build a rom for your device. This also asks you some questions in order to build the rom and do the process for you and if you want you can do it manually.
echo
echo Disclamer: We are not responsible for any damage that happens if you flash a custom version of Android on your phone. So please be sure you are willing to take the risk before continuing. If you do everythig correctly you should not worry.
echo
read -p "Press Enter/Return to continue, or [CTRL+C] to exit script: "
echo
# Help user get to know Android terms
echo Please fimilar yourself with these Android terms:
echo
echo Name Schemes: is the github repository name for your device.
echo - ex. "android_device_motorola_sdm632-common -> device/motorola/sdm632-common"
echo - ex. "android_kernel_motorola_sdm632 -> kernel/motorola/sdm632"
echo - ex. "proprietary_vendor_motorola -> vendor/motorola"
echo Codename: phones nickname
echo - ex. "moto g7 power = ocean"
echo Common Device Tree: if your phone has a family, all stuff that the family shares, is in there so the common tree is used by all 3 devices
echo    - "ex. family: moto g7, g7 power, g7 plus"
echo    - "ex. shares: cpu architecture, cameras, bluethooth, wlan, etc"
echo - The names of the common device trees:
echo    - "ex. android_device_oem_architecture-common"
echo    - "ex. android_device_motorola_sdm632-common"
echo OEM: What company made the phone
echo - "ex. samsung, motorola"
echo ccash: speeds up build speed
echo - "~25-50GB for one device to be built at once"
echo Vender: Libraries from your phone manufacturer that we need for the device to work
echo - "ex. android_vendor_oem or android_vendor_oem_codename"
echo - "ex. android_vendor_motorola"
echo Kernel: It is the stuff that talks from the components to the app
echo - "ex. android_kernel_oem_architecture"
echo - "ex. android_kernel_motorola_sdm632"
echo Other Dependencies: These are additional files needed to run ur device
echo - "You will find these in a .dependencies file in device tree and/or common device trees"
echo
read -p "Press Enter/Return to continue, or [CTRL+C] to exit script: "
echo
echo Please fimilar yourself with these basic commands:
echo
echo "ls <dir>"
echo - "Shows all the stuff in the folder you are right now"
echo "cd <dir>"
echo - "Stands for change directory and as it says it changes the directory you are in"
echo "rm -rf <dir/file>"
echo - "deletes a folder or a file (often devs also say nuke x, then we mean delete x)"
echo "mkdir <dir>"
echo - "creates a directory"
echo
read -p "Press Enter/Return to continue, or [CTRL+C] to exit script: "
echo
echo Also fimilar yourself with these basic github commands:
echo
echo "git clone <repo_url> <path_to_go> -b <branch>"
echo - "Clones the branch (defined after -b) from repo_url (github.com/...) to a path you specifiy eg. device/motorola/ocean"
echo "git push <remote> <branch>"
echo - "Pushes your local changes to the server (you mustn't specify a remote and branch then it pushes to your standard remote, works not with new created branches)"
echo "git chechkout -b <branch>"
echo - "checks out an existing/new branch on your local repo"
echo "git commit"
echo - "Commits the changes you have made (that means that it makes them ready to push)"
echo "git cherry-pick <commit_id>"
echo - "Takes a specified commit and puts it on your local tree (has to be pushed later, works like a normal commit)"
echo "git reverse <commit_id>"
echo - "Undo a commit (also works like a normal commit, has to be pushed later to server)"
echo
read -p "Press Enter/Return to continue, or [CTRL+C] to exit script: "
echo
echo You will need to have the folling to continue:
echo
echo 1. Know your device codename name
echo 2. Have your devices proprietary blobs
echo .. 1. You can decide if you want to: extract them from your phone
echo .. 2. If your phone is already offically supports LineageOS find your proprietary blobs from https://github.com/TheMuppets
echo 3. Know what project you are building for
echo 4. Know your project build flags
echo 5. What build type do you want to build
echo .. 1. vanilla
echo .. 2. gapps
echo .. 3. custom if available
echo
read -p "Press Enter/Return to continue, or [CTRL+C] to exit script: "
# aditional info
echo Would you like to view some aditional resources:
echo
echo How to flash ROM to your phone:
echo
echo 1. "Know your phones codename"
echo 2. "Download twrp"
echo 3. "Download the ROM of your choice"
echo 4. "Install ADB on your computer"
echo 5. "Unlock bootloader"
echo 6. "flash twrp"
echo 7. "Wipe/Format data ( Type "yes" and swipe)"
echo 8. "Flash the ROM from wherever its located in your internal storage/USB/Micro SD"
echo
echo How to root your phone:
echo
echo 1. "Download magisk"
echo 2. "Download twrp"
echo 3. "flash twrp"
echo 4. "flash magisk"
echo 5. "Boot into your phone and you should find a app called magisk and install it"
echo
echo How to update your builds:
echo
echo 1.
echo
echo How to become a maintainer:
echo
echo "Disclamer: This can be differerent for what rom you pick but generally it's..."
echo
echo 1.
echo
read -p "Press Enter/Return to continue, or [CTRL+C] to exit script: "
# Ask user questions
echo
echo User Setup:
echo
echo "How much ccash do you want? (HIGHLY RECOMMENDED! Recommended ccash size is ~25-50GB per device): "
echo
read ccash
echo
echo "What Rom project would you like to build? (Please provide repo link. This is found on github (projectname/Android)): "
echo
read rom
echo
echo "What is your device codename?: "
echo
read codename
echo
echo "Please provide your devices proprietary blobs: "
echo
read devicepropietaryblobs
echo
echo "Please select build type (vanilla/gapps/custom if rom supports it):"
echo
read buildtype
echo
echo "What would you like to put as the maintainer name?: "
echo
read maintainer name
echo
echo "Would you like to sign your ROM (Y/N)?: "
echo
read signrom
echo "What would you like to name this file?: "
echo
echo Installing required packages for the android build enviornment.
echo Installing Android/device repos.
echo
echo "How many processes do you want to run (the more the faster it will build): "
echo
read processcount
echo
echo "Starting build for ${codename}: "
echo "Please be pacient this prosses can take a while"
sleep 3
# add install script here
echo
echo "Rom zip is located at ~/projectname/out/target/product/devicecodename/romname-ocean.zip"
echo
# End Info
echo Ending Info:
echo
echo I hope this script has been helpful to make your custom rom.
echo Have fun testing out the rom you just created! :3
exit 0
