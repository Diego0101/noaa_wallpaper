# NOAA Wallpaper
## Description
This is a script that display a "real time" image of Earth, incoming from NOAA's satellite data, and sets it as desktop wallpaper for the Linux Xfce Desktop Environment (Works on Linux Mint)
## Installation


> sudo apt-get install imagemagick
> 
> sudo mkdir /opt/noaawallpaper
> 
> sudo curl -L https://raw.githubusercontent.com/Diego0101/noaa_wallpaper/refs/heads/main/noaawallpaper.sh -o /opt/noaawallpaper/noaawallpaper.sh
> 
> sudo chmod 755 /opt/noaawallpaper/noaawallpaper.sh
> 
> sudo update-rc.d noaawallpaper.sh default


## Execution 
By runing the script for GLM data:
> /opt/noaawallpaper/noaawallpaper.sh -s glm

or DayNight data

> /opt/noaawallpaper/noaawallpaper.sh -s dn

My personal choice is to invoke it through the shortcut: Ctrl+F11
It can be set by clicking on Start>Keyboard>Application Shortcuts, Add, and set the execution of "/opt/noaawallpaper.sh -s dn" triggered by Ctrl+F11
*Feel free to use, report or comment*

## Gallery
Example of desktop with DayNight data screenshot
![NOAA GOES16 Imagery](https://raw.githubusercontent.com/Diego0101/noaa_wallpaper/main/screen.jpg)


Copyright (c) 2024 Diego Ayala

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
