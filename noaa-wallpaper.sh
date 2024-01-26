#! /bin/sh
### BEGIN INIT INFO
# Provides:          noaa-wallpaper.sh
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Start wallpaper daemon at boot time
# Description:       Enable service provided by daemon.
### END INIT INFO
# NOAA Wallpaper by DEAC

#updating image
#while :
#    do
    convert -fill ""#80ff00"" -font Helvetica -pointsize 20 -draw "text 900,700 'Coded by DEAC, Updating NOAA imagery...'" ~/output.jpg ~/  GOES16.jpg
    xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-1/workspace0/last-image -s ~/GOES16.jpg
    #URL and text from NOOA satellite
    A=$(curl -v --stderr -  https://www.star.nesdis.noaa.gov/GOES/fulldisk.php?sat=G16 | grep DayNight | grep 1808x1808 | tail -1) 
    #A=$(curl -v --stderr -  https://www.star.nesdis.noaa.gov/GOES/fulldisk.php?sat=G16 | grep GLM | grep 1808x1808 | tail -1) 
    B=$(echo $A | cut -d'=' -f3 | cut -b 2-57)
    #B=$(echo $A | cut -d'=' -f3 | cut -b 2-43)
    A=$(echo $A | cut -d'=' -f4 | cut -b 2-135)
    #A=$(echo $A | cut -d'=' -f4 | cut -b 2-103)
    # A, B : A= URL of image,B= information and date
    wget $A -O ~/GOES16.jpg
    #Save the url as a jpg, done!, next step will be adding text to image we need imagemagick to do this, add as sudo apt-get install imagemagick
    A="text 700,1250 "\'$B\'
    convert -fill ""#80ff00"" -font Helvetica -pointsize 20 -draw "$A" ~/GOES16.jpg ~/output.jpg
    #set as wallpaper
    xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-1/workspace0/last-image -s ~/output.jpg
#    sleep 30
#done
