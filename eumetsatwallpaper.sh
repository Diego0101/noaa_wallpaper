#! /bin/sh
### BEGIN INIT INFO
# Provides:          EUMETSATwallpaper.sh
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Start wallpaper daemon at boot time
# Description:       Enable service provided by daemon.
### END INIT INFO

#Copyright (c) 2025 Diego Ayala
#The above copyright notice and this permission notice shall be included in all
#copies or substantial portions of the Software.

# EUMETSAT Wallpaper by Diego Ayala
    convert -fill ""#80ff00"" -font Helvetica -pointsize 20 -draw "text 900,700 'Coded by DEAC, Updating EUMETSAT imagery...'" ~/output.jpg ~/  Meteosat0.jpg
    xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-1/workspace0/last-image -s ~/Meteosat0.jpg
while getopts "s:" opt; do
  case $opt in
    s) echo "Source set to '$OPTARG'" ;;
    *) echo "Invalid option -$opt"  ;;
  esac
done
    # GET URL and text from NOOA satellite. A= URL of image,B= information and date
     case "$OPTARG" in
        rbgnat) echo "Downloading Meteosat 0 degree Natural Colour Enhncd. imagery" 
        A=$(curl -v --stderr -  https://eumetview.eumetsat.int/static-images/latestImages.html | grep EUMETSAT_MSG_RGBNatColourEnhncd_WesternAfrica | tail -1)
        B=$(echo $A | cut -d'=' -f3 | cut -d'"' -f2)        
        A="https://eumetview.eumetsat.int/static-images/"$B  ;;
 
        *)
          echo "Invalid option --$OPTARG"
          ;;
      esac

    wget $A -O ~/Meteosat0.jpg    #Save the url as a jpg, done!, next step will be adding text to image we need imagemagick to do this, add as sudo apt-get install imagemagick
    A="text 700,1250 "\'$B\'
    convert -fill ""#80ff00"" -font Helvetica -pointsize 20 -draw "$A" ~/Meteosat0.jpg ~/output.jpg
    #set as wallpaper
    convert -fill ""#cfff00"" -font Helvetica -pointsize 20 -draw "text 840,907 '.'" ~/output.jpg ~/output.jpg # a Dot in the place of Quito
    xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-1/workspace0/last-image -s ~/output.jpg
