#!/bin/bash

clear

echo    "sırayla kur"
echo    "1. wget yoksa "   
echo    "2. opera stable-62_amd64.deb indir"  
echo    "3. opera kur"
echo    "4. fix-broken"
echo    "5. flash player"      
echo    "6. autoremove"           
echo    "7. update"
echo    "8. libffmpeg indir"
echo    "9. libffmpeg operaya ver"
echo    "10. exit "

echo -n "Secenek : "
read secenek



case $secenek in
        1)
          sudo apt wget -y 
                   echo & sudo ./opera.sh
          ;;
        2)
           sudo wget https://download3.operacdn.com/pub/opera/desktop/62.0.3331.43/linux/opera-stable_62.0.3331.43_amd64.deb
                   echo & sudo ./opera.sh
          ;;
        3)
           sudo dpkg --install opera-stable_62.0.3331.43_amd64.deb
           echo  & sudo ./opera.sh
          ;;
        4)
           sudo apt --fix-broken install -y 
                   echo  & sudo ./opera.sh
          ;;
        5)
          sudo apt install pepperflashplugin-nonfree -y
                   echo & sudo ./opera.sh
          ;;
        6)
           sudo apt autoremove -y
                   echo & sudo ./opera.sh
          ;;
        7)
           sudo apt update -y
                   echo & sudo ./opera.sh
          ;;
        8) 
           wget https://sourceforge.net/projects/operao/files/libffmpeg.so
                   echo & sudo ./opera.sh
          ;;
        9)
           sudo cp libffmpeg.so  /usr/lib/x86_64-linux-gnu/opera/libffmpeg.so
                   echo & sudo ./opera.sh
          ;;
        10) exit
          ;;
        *) 
          echo Hatali secenek & sudo ./opera.sh
esac

#####################################
#sonsöz https://youtu.be/dMBMH84YCiI
######################################

