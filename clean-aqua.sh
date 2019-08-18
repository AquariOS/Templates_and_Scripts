#!/bin/bash
# Copyright (C) 2019 AquariOS
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Specify the location of your local AquariOS source directory
SOURCE_DIR=$HOME/aquarios

# Specify which branch you'll be using
BRANCH=a9

# Specify remotes
REMOTE=aqua
REMOTE2=aqua2

git rebase --abort 2>&1 >/dev/null 2>/dev/null
git cherry-pick --abort 2>&1 >/dev/null 2>/dev/null

function cleanslate() {
  echo "Clearing stage..."
  sleep 1
  git rebase --abort >> /dev/null 2>&1
  git cherry-pick --abort >> /dev/null 2>&1
}

function track() {
  echo "Switching to tracked branch..."
  sleep 1
  git fetch $REMOTE $BRANCH;git checkout -b $BRANCH --track $REMOTE/$BRANCH
}

# Colors
BOLD='\033[1;37m'
CLEAR='\033[0m'


### LIST OF TRACKED REPOS ###
echo -e $BOLD "Checking bootable/recovery" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd bootable/recovery;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;track;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking build/make" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd build/make;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;track;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking build/soong" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd build/soong;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;track;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking device/google/blueline" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd device/google/blueline;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;git fetch $REMOTE2 $BRANCH;git checkout -b $BRANCH --track $REMOTE2/$BRANCH;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking device/google/crosshatch" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd device/google/crosshatch;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;git fetch $REMOTE2 $BRANCH;git checkout -b $BRANCH --track $REMOTE2/$BRANCH;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking device/google/taimen" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd device/google/taimen;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;git fetch $REMOTE2 $BRANCH;git checkout -b $BRANCH --track $REMOTE2/$BRANCH;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking device/google/walleye" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd device/google/walleye;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;git fetch $REMOTE2 $BRANCH;git checkout -b $BRANCH --track $REMOTE2/$BRANCH;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking device/google/wahoo" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd device/google/wahoo;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;git fetch $REMOTE2 $BRANCH;git checkout -b $BRANCH --track $REMOTE2/$BRANCH;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking device/huawei/angler" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd device/huawei/angler;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;git fetch $REMOTE2 $BRANCH;git checkout -b $BRANCH --track $REMOTE2/$BRANCH;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking device/lge/bullhead" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd device/lge/bullhead;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;git fetch $REMOTE2 $BRANCH;git checkout -b $BRANCH --track $REMOTE2/$BRANCH;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking external/google" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd external/google;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;track;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking external/selinux" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd external/selinux;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;track;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking frameworks/av" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd frameworks/av; cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;track;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking frameworks/base" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd frameworks/base;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;track;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking frameworks/native" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd frameworks/native;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;track;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking frameworks/support" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd frameworks/support;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;track;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking kernel/google/bluecross" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd kernel/google/bluecross;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;git fetch $REMOTE2 $BRANCH;git checkout -b $BRANCH --track $REMOTE2/$BRANCH;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking kernel/google/wahoo" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd kernel/google/wahoo;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;git fetch $REMOTE2 $BRANCH;git checkout -b $BRANCH --track $REMOTE2/$BRANCH;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking kernel/huawei/angler" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd kernel/huawei/angler;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;git fetch $REMOTE2 $BRANCH;git checkout -b $BRANCH --track $REMOTE2/$BRANCH;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking manifest" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd manifest;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;track;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking packages/apps/Bluetooth" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd packages/apps/Bluetooth; cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;track;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking packages/apps/CoralReef" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd packages/apps/CoralReef; cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;track;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking packages/apps/DocumentsUI" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd packages/apps/DocumentsUI;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;track;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking packages/apps/EmergencyInfo" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd packages/apps/EmergencyInfo;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;track;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking packages/apps/Dialer" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd packages/apps/Dialer;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;track;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking packages/apps/Launcher3" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd packages/apps/Launcher3;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;track;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking packages/apps/OmniStyle" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd packages/apps/OmniStyle;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;track;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking packages/apps/Nfc" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd packages/apps/Nfc;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;track;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking packages/apps/SettingsIntelligence" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd packages/apps/SettingsIntelligence;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;track;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking packages/apps/SmartNav" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd packages/apps/SmartNav;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;track;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking packages/apps/Settings" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd packages/apps/Settings;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;track;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking packages/apps/SmartNavSettings" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd packages/apps/SmartNavSettings;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;track;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking packages/apps/WeatherClient" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd packages/apps/WeatherClient;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;track;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking packages/services/Telecomm" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd packages/services/Telecomm;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;track;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking packages/providers/DownloadProviders" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd packages/providers/DownloadProviders;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;track;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking prebuilts/clang/host/linux-x86" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd prebuilts/clang/host/linux-x86;cleanslate;git checkout -b temp_branch;git branch -D p9x;git fetch gitlab p9x;git checkout -b p9x --track gitlab/p9x;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking system/core" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd system/core;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;track;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking system/extras" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd system/extras;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;track;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking system/sepolicy" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd system/sepolicy;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;track;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking system/vold" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd system/vold;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;track;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking vendor/aquarios" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd vendor/aquarios;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;track;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking vendor/assets" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd vendor/assets;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;track;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking vendor/google" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd vendor/google;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;git fetch $REMOTE2 $BRANCH;git checkout -b $BRANCH --track $REMOTE2/$BRANCH;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking vendor/pixelgapps" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd vendor/pixelgapps;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;git fetch gitlab $BRANCH;git checkout -b $BRANCH --track gitlab/$BRANCH;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo -e $BOLD "Checking vendor/support" 
echo -e $CLEAR
cd $SOURCE_DIR/ && cd vendor/support;cleanslate;git checkout -b temp_branch;git branch -D $BRANCH;track;git branch -D temp_branch && git reset --hard;git status;
echo -e " " 

echo ""
echo ""
echo "=== ≪  🐬 ⚯  🐙 ⚯  🐟 ⚯  🐬 ⚯  🐟 ⚯  🐙 ⚯  🐬  ≫ ==="
echo ""
echo "      All repos tracked by AquariOS are now"
echo "     up-to-date and in-line with git source!"
echo "        Confirm this by using git status"
echo ""
echo "                  ⚯        ⚯        ⚯"
echo "             Script made by Calphonic"
echo ""
echo "=== ≪  🐬 ⚯  🐙 ⚯  🐟 ⚯  🐬 ⚯  🐟 ⚯  🐙 ⚯  🐬  ≫ ==="
echo ""
 exit 0
