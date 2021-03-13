#!/bin/bash
cd ~
sudo cp -r /home/$USER/discordautosetup/ /opt/
sudo chmod +x discord.sh 
sudo chmod +x alertsqlid.sh
sudo ln -s /opt/discordautosetup/discord.sh /usr/local/bin/todiscord
sudo ln -s /opt/discordautosetup/alertsqlid.sh /usr/local/bin/alert


echo "Enter Discord Bot ID"
read botid
echo "Enter Webhook Personal URL"
read whpersonal
echo "Enter Webhook Public URL"
read whpublic

echo export  IDSCANNER=$botid >>~/.zshrc  
echo export WEBHHOOKPERSONAL=$whpersonal >>~/.zshrc  
echo export WEBHHOOKPUBLIC=$whpublic >>~/.zshrc  
