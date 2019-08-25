# APPIUM WORKSHOP
## Getting started
### Creating environment
1) Download VirtualBox software from https://www.virtualbox.org/;
2) Download VirtualBox Extension Pack;
3) Install VirtualBox;
4) Install Extension Pack
5) Download pre-configured virtual machine;
6) Add the VM image to VirtualBox;
### Accessing physical device through VM
1) If VM has been started, shut it down;
2) Connect device to a USB port on the host machine;
3) In VirtualBox app, right click on the VM;
4) Select Settings;
5) Select "Ports" tab;
6) Select USB 3.0 checkbox;
7) Click on the add a USB device filter button (One of the buttons with a + sign, next to USB device filters section)
8) Select the device;
9) Save changes;
10) Start up the VM;
11) Type `adb devices` in terminal to confirm (device ID should be listed there)
12) On physical device allow access permissions (be sure to check the always allow checkbox)
### Running the project
1) Start appium server (`appium` command in terminal or using the executable)
2) In terminal: navigate to project's directory
3) Install app using `adb install -r PreciseUnitConversion.apk`
4) Run command `cucumber`
