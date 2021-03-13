#!/bin/bash
cd ~
sudo cp -r /home/$USER/discordautosetup/ /opt/
sudo chmod +x /opt/discordautosetup/discord.sh 
sudo chmod +x /opt/discordautosetup/alertpublic.sh
sudo chmod +x /opt/discordautosetup/alert.sh
sudo chmod +x /opt/discordautosetup/alertpersonal.sh
sudo ln -s /opt/discordautosetup/discord.sh /usr/local/bin/todiscord
sudo ln -s /opt/discordautosetup/alertpersonal.sh /usr/local/bin/alertpersonal
sudo ln -s /opt/discordautosetup/alertpublic.sh /usr/local/bin/alertpublic
sudo ln -s /opt/discordautosetup/alert.sh /usr/local/bin/alert



echo "Enter Discord Bot ID"
read botid
echo "Enter Webhook Personal URL"
read whpersonal
echo "Enter Webhook Public URL"
read whpublic

echo export  IDSCANNER=$botid >>~/.zshrc  
echo export WEBHHOOKPERSONAL=$whpersonal >>~/.zshrc  
echo export WEBHHOOKPUBLIC=$whpublic >>~/.zshrc  
