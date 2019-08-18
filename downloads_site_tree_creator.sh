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

# Colors
BOLD='\033[1;37m'
CLEAR='\033[0m'

# Create the brand roots
cd ~/downloads && mkdir devices && cd devices && mkdir essential google huawei lg oneplus;

# Create GOOGLE device directories
cd google && mkdir blueline crosshatch taimen walleye;
cd blueline && mkdir pie && cd pie && mkdir vendor-and-firmware && cd ../..;
cd crosshatch && mkdir pie && cd pie && mkdir vendor-and-firmware && cd ../..;
cd taimen && mkdir pie && cd pie && mkdir vendor-and-firmware && cd ../..;
cd walleye && mkdir pie && cd pie && mkdir vendor-and-firmware && cd ../../..;

# Create LG device directories
cd lg && mkdir bullhead g6;
cd bullhead && mkdir pie && cd pie && mkdir vendor-and-firmware && cd ../..;
cd g6 && mkdir pie && cd pie && mkdir vendor-and-firmware && cd ../../..;

# Create HUAWEI device directories
cd huawei && mkdir angler berkeley;
cd angler && mkdir pie && cd pie && mkdir vendor-and-firmware && cd ../..;
cd berkeley && mkdir pie && cd pie && mkdir vendor-and-firmware && cd ../../..;

# Create ESSENTIAL device directories
cd essential && mkdir mata;
cd mata && mkdir pie && cd pie && mkdir vendor-and-firmware && cd ../../..;

# Create ONEPLUS device directories
cd oneplus && mkdir oneplus3 cheeseburger dumpling enchilada fajita;
cd oneplus3 && mkdir pie && cd pie && mkdir vendor-and-firmware && cd ../..;
cd cheeseburger && mkdir pie && cd pie && mkdir vendor-and-firmware && cd ../..;
cd dumpling && mkdir pie && cd pie && mkdir vendor-and-firmware && cd ../..;
cd enchilada && mkdir pie && cd pie && mkdir vendor-and-firmware && cd ../..;
cd fajita && mkdir pie && cd pie && mkdir vendor-and-firmware && cd ../../../..;

echo ""
echo ""
echo "=== ≪  🐬 ⚯  🐙 ⚯  🐟 ⚯  🐬 ⚯  🐟 ⚯  🐙 ⚯  🐬  ≫ ==="
echo ""
echo "       All AquariOS download directories"
echo "        have been successfully created!"
echo ""
echo "      Confirm this by checking link below"
echo "        https://downloads.aquarios.net/"

echo "              ⚯        ⚯        ⚯"
echo "          Script made by Calphonic"
echo ""
echo "=== ≪  🐬 ⚯  🐙 ⚯  🐟 ⚯  🐬 ⚯  🐟 ⚯  🐙 ⚯  🐬  ≫ ==="
echo ""
 exit 0
