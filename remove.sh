clear

#Remove
echo -e "Removing Old files"
rm -rf /data/data/com.termux/files/usr/etc/zshrc
rm -rf /data/data/com.termux/files/usr/etc/motd
rm -rf /data/data/com.termux/files/usr/etc/bash.bashrc
rm -rf /data/data/com.termux/files/usr/etc/apphoru

#Copy
echo -e "Replacing New files"
cd Data_Files/
mv data_01 motd
mv data_02 bash.bashrc
cp motd /data/data/com.termux/files/usr/etc/
cp bash.bashrc /data/data/com.termux/files/usr/etc/
mv motd data_01
mv bash.bashrc data_02

cd /data/data/com.termux/files/usr/etc/
bash AHdata.sh