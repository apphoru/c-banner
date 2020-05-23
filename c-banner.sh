clear

#colors
red='\033[1;91m'
green='\033[1;92m'
yellow='\033[1;93m'
purple='\033[1;95m'
cyan='\033[1;96m'
blue='\033[1;94m'
white='\033[1;97m'

usr='\[\e[39m\]\u\[\e[0m\]'
tm='\[\e[39m\]\A\[\e[0m\]'
dt='\[\e[39m\]\d\[\e[0m\]'
bv='\[\e[39m\]\v\[\e[0m\]'
#logo
cd Data_Files
cat data_00 | lolcat --animate

#font
echo -e "$green "
echo -e "This Tool is used to add Custom banners"
echo -e "---------------------------------------"
echo -e "Tool Vertion : 1.0v"
echo -e "$red"

echo -e "How to Add You Theam"
echo -e "--------------------"
echo -e "1) After animation part a editer will pop up"
echo -e "2) In it please add your ASCIE Text art"
echo -e "3) Affter adding press [ctrl] + x "
echo -e "4) Next Press [ctrl] + y "
echo -e "5) Lastly press [Enter]"
echo

#animate
echo -e "$yellow"
echo -e "If you want to add animation"
echo -e "-------------------------------"
echo -e "#Please type 'animate' "
echo -e "#If you dont want just press enter"
read anm
echo

#create temp
nano apphoru
echo "cat apphoru | lolcat --"$anm" --spread=1 --speed=100 " > Temp.txt
echo "cd" > Temp2.txt
echo "cd /data/data/com.termux/files/usr/etc/" > Temp1.txt
echo "PS1='\[\e[31m\]>\[\e[0m\]\[\e[93m\]\A\[\e[0m\]\[\e[31m\]>\[\e[0m\]\[\e[36m\]\w\[\e[0m\]\[\e[31m\]>\[\e[0m\]\[\e[39m\]\n\[\e[0m\]\[\e[31m\]>>>\[\e[0m\]\[\e[32m\]'" > Temp0.txt

#Delete Old Files
rm -rf /data/data/com.termux/files/usr/etc/motd
rm -rf /data/data/com.termux/files/usr/etc/zshrc
rm -rf /data/data/com.termux/files/usr/etc/apphoru
rm -rf /data/data/com.termux/files/usr/etc/bash.bashrc

#Replacing New files
cp apphoru /data/data/com.termux/files/usr/etc/
cp data_02 /data/data/com.termux/files/usr/etc/
cp data_03 /data/data/com.termux/files/usr/etc/
cd /data/data/com.termux/files/usr/etc/
mv data_02 bash.bashrc
mv data_03 zshrc
cd /data/data/com.termux/files/home/c-banner/Data_Files/

# Dual injecting
cat "Temp0.txt" >> /data/data/com.termux/files/usr/etc/zshrc
cat "Temp1.txt" >> /data/data/com.termux/files/usr/etc/zshrc
cat "Temp.txt" >> /data/data/com.termux/files/usr/etc/zshrc
cat "Temp2.txt" >> /data/data/com.termux/files/usr/etc/zshrc

cat "Temp0.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
cat "Temp1.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
cat "Temp.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
cat "Temp2.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc

#delete temp files
rm -rf Temp.txt
rm -rf Temp2.txt
rm -rf Temp1.txt
rm -rf Temp0.txt

#finish
termux-open-url https://www.youtube.com/channel/UCaZUWHSho8-s3GECYrhBwqg
figlet Finish | lolcat
exit
