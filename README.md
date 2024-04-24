# NOAA Wallpaper
## Description
This is a script that display a "real time" image of Earth, incoming from NOAA's satellite data, and sets it as desktop wallpaper for the Linux Xfce Desktop Environment (Works on Linux Mint)
## Installation
Copy the source from this repository

> sudo apt-get install imagemagick
>
> sudo mkdir /opt/noaawallpaper
> 
> sudo git clone https://github.com/Diego0101/noaa_wallpaper.git /opt/noaawallpaper
> 
> sudo chmod 755 /opt/noaawallpaper/noaa-wallpaper.sh
> 
> sudo update-rc.d noaa-wallpaper.sh default

## Execution 
By runing the script:

> /opt/noaawallpaper/noaa-wallpaper.sh

My personal choice is to invoke it through the shortcut: Ctrl+F12
It can be set by clicking on Start>Keyboard>Application Shortcuts, Add, and set the execution of "/opt/bin/noaa-wallpaper.sh" triggered by Ctrl+F12

*Feel free to use, report or comment*

## Gallery
![NOAA GOES16 Imagery](https://cdn.star.nesdis.noaa.gov/GOES16/ABI/FD/GEOCOLOR/1808x1808.jpg)
