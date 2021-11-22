#!/bin/bash

# Info
echo
echo Welcome to the Rom Builder.
echo This script aims to teach you the the terms and commands so you can build a rom for your device. This also asks you some questions in order to build the rom and do the process for you and if you want you can do it manually.
echo
# Help user get to know Android terms
echo Please fimilar yourself with these Android terms:
echo
echo Name Schemes:
echo Codename:
echo Common Device Tree:
echo OEM:
echo ccash:
echo Vender:
echo Kernel:
echo Other Dependencies:
echo
read -p "Press Enter/Return to continue, or [CTRL+C] to exit script: "
echo
echo Please fimilar yourself with these basic commands:
echo
echo "ls <dir>"
echo "cd <dir>"
echo "rm -rf <dir/file>"
echo "mkdir <dir>"
echo
echo Also fimilar yourself with these basic github commands:
echo
echo "git clone <repo_url> <path_to_go> -b <branch>"
echo "git push <remote> <branch>"
echo "git chechkout -b <branch>"
echo "git commit"
echo "git cherry-pick <commit_id>"
echo "git reverse <commit_id>"
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
echo How to root your phone:
echo How to update your builds:
echo How to become a maintainer:
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
echo "Please select build type (usally vanilla/gapps):"
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
echo
echo Installing required packages for the android build enviornment.
echo Installing Android/device repos.
echo
echo "How many processes do you want to run (the more the faster it will build): "
echo
read processcount
echo
echo "Starting build for ${codename}: "
sleep 3
# add install script here
echo
echo "Rom zip is located at ~/projectname/out/target/product/devicecodename/romname-ocean.zip"
echo
# End Info
echo Ending Info:
echo
echo I hope this script has been helpful to make your custom rom.
echo Have fun testing out the rom you just created!
