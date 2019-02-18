echo  "                   \033[1m\033[31mAUTHOR :           VAIJINATH AKHADE (MacaisH)\033[0m"
echo  "                   \033[1m\033[31mDESIGNED BY :      MacaisH Cyber Security Labs,pvt Ltd\033[0m"


echo  "                   \033[1m\033[31mCONTACT :          macaish@rediffmail.com\033[0m " 

figlet "     	C Y B 3 R 7 R O N"
echo  "\033[1m\033[31m++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\033[0m"
echo ""
echo  "\033[1m\033[31mNote:\033[0mProvide Pictures in .png format"

# taking path of image from user fro grub and login screen
echo "Enter full path of choise of you Grub Background without quotes:"
read grub
echo "Enter full path of your choise of your Login Wallpaper without quotes:"
read wallpaper

# checking if Image exists or not
if [ ! -f "$grub" ];
then
    echo  "\033[1m \033[31mfile dosent exists, please check path of Grub Image\033[0m"
    exit
fi
if [ ! -f "$wallpaper" ];
then
    echo  "\033[1m \033[31mfile dosent exists, please check path of Login Image\033[0m"
    exit
fi

#changing grub background:
echo  "\033[1m \033[34mChanging Grub Background:\033[0m"
echo "GRUB_BACKGROUND='$grub'" >> /etc/default/grub
update-grub

#changing login screen:
echo  "\033[1m \033[34mChanging Login screen wallpaper:\033[0m"
cd /usr/share/images/desktop-base
mv login-background.{png,png.bak}
wallpaper=''$wallpaper''
cp "$wallpaper" login-background.png
cd ~/
echo "done"
echo  "Both grub and login wallpaper updated. \033[1m \033[34mNow restart you computer to see effect\033[0m"
echo "Thank you and have a nice day"
echo "Contact Me : macaish@rediffmail.com"
