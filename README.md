# NOAA Wallpaper
## Description
This is a script that display a "real time" image of Earth, incoming from NOAA's satellite data, and sets it as desktop wallpaper for the Linux Xfce Desktop Environment (Works on Linux Mint)
## Installation
Copy the source from this repository
sudo mkdir /opt/bin

sudo git clone https://github.com/Diego0101/noaa_wallpaper.git /opt/bin

sudo chmod 755 /opt/bin/noaa-wallpaper.sh

sudo update-rc.d noaa-wallpaper.sh default

## Execution 
By runing the script:

/opt/bin/noaa-wallpaper.sh

My personal choice is to invoke it through the shortcut: Ctrl+F12
It can be set by clicking on Start>Keyboard>Application Shortcuts, Add, and set the execution of "/opt/bin/noaa-wallpaper.sh" triggered by Ctrl+F12

*Feel free to use, report or comment*
