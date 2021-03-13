#!/bin/bash
echo "Enter Discord Bot ID"
read botid
echo "Enter Webhook Personal URL"
read whpersonal
echo "Enter Webhook Public URL"
read whpublic

echo export  IDSCANNER=$botid >>~/.zshrc  
echo export WEBHHOOKPERSONAL=$whpersonal >>~/.zshrc  
echo export WEBHHOOKPUBLIC=$whpublic >>~/.zshrc  
