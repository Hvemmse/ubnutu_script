# Coded on 27-06-2022 in bash Frank Simens
# Contact frank@simens.dk

clear

# Some Variables
sti=$(pwd)
fri=$(free -h > fri.txt)
curl ip.me -s -o ip.txt >> /dev/null
ipa=$(cat ip.txt)
ipl=$(hostname -I)
# Show the working Directory
echo "Nuværende sti: " $sti
echo
# Show the User name
echo "Brugernavn: " $USER
# Show the hostname
echo "PCNavn: " $HOSTNAME 
# Show the wan ip
echo "WANip: " $ipa
# Show the LAN ip
echo "LANip: " $ipl 
# List the last 10 commands
echo
echo "Sidste 10 kommando: " 
history | tail 

echo  
# show Memory
echo "Hukommelse: "

# show text file fri.txt
cat fri.txt

# show disk in the system
echo
lsblk -d

# remove some files
rm fri.txt
rm ip.txt
