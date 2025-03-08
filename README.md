# eumetsat Wallpaper
## Description
This is a script that display a "real time" image of Earth, incoming from eumetsat's satellite data, and sets it as desktop wallpaper for the Linux Xfce Desktop Environment (Works on Linux Mint)
## Installation


> sudo apt-get install imagemagick
> 
> sudo mkdir /opt/eumetsatwallpaper
> 
> sudo curl -L https://raw.githubusercontent.com/Diego0101/noaa_wallpaper/refs/heads/eumetsat/eumetsatwallpaper.sh -o /opt/eumetsatwallpaper/eumetsatwallpaper.sh
> 
> sudo chmod 755 /opt/eumetsatwallpaper/eumetsatwallpaper.sh
> 
> sudo update-rc.d eumetsatwallpaper.sh default


## Execution 
By runing the script for rbgnat data:
> /opt/eumetsatwallpaper/eumetsatwallpaper.sh -s rbgnat


My personal choice is to invoke it through the shortcut: Ctrl+F09
It can be set by clicking on Start>Keyboard>Application Shortcuts, Add, and set the execution of "/opt/eumetsatwallpaper.sh -s dn" triggered by Ctrl+F11
*Feel free to use, report or comment*

## Gallery
Example of desktop with DayNight data screenshot
![eumetsat METEOSAT0 Imagery](https://raw.githubusercontent.com/Diego0101/eumetsat_wallpaper/main/screen.jpg)


Copyright (c) 2024 Diego Ayala

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
