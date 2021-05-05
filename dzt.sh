#!/bin/bash
clear
echo " "
echo " "
echo ":::::::::::::::::::::::::::"
echo "| Tool By Kintro Security |"
echo ":::::::::::::::::::::::::::"
echo " "
echo " "
echo "Please Wait Till End Result"
echo " "
echo " "
read -p 'Enter Domain: ' domain
echo " "
echo " "
host -t ns $domain | awk '{print $4}' > dn.txt



for list in $(cat dn.txt);
do
	host -l $domain $list;
done
