#!/bin/bash
cd ~
sudo cp -r /root/discordautosetup/ /opt/
sudo chmod +x /opt/discordautosetup/discord.sh 
sudo chmod +x /opt/discordautosetup/alertpublic.sh
sudo chmod +x /opt/discordautosetup/alert.sh
sudo chmod +x /opt/discordautosetup/result.sh
sudo chmod +x /opt/discordautosetup/alertpersonal.sh
sudo ln -s /opt/discordautosetup/discord.sh /usr/local/bin/todiscord
sudo ln -s /opt/discordautosetup/result.sh /usr/local/bin/result
sudo ln -s /opt/discordautosetup/alertpersonal.sh /usr/local/bin/alertpersonal
sudo ln -s /opt/discordautosetup/alertpublic.sh /usr/local/bin/alertpublic
sudo ln -s /opt/discordautosetup/alert.sh /usr/local/bin/alert



echo "Enter Discord Bot ID"
read botid
echo "================================="
echo "Please Enter Webhook Personal URL"
echo "================================="
read whpersonal
echo "================================="
echo "Please Enter Webhook Public URL"
echo "================================="
read whpublic

echo export  IDSCANNER=$botid >>~/.zshrc  
echo export WEBHHOOKPERSONAL=$whpersonal >>~/.zshrc  
echo export WEBHHOOKPUBLIC=$whpublic >>~/.zshrc  
