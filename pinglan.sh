#!/bin/bash

### Coded in 2023 by Frank Fimens Contact frank@simens.dk

clear
PS3='Enter LANscope: '
select opt in "192.168.1." "127.0.0." "10.0.2." "Costum" "Scan all ip in lan" "Exit"
do

   case $opt in
        "192.168.1.")
            echo "you chose choice $opt$1"
            ping -c4 $opt$1 ;;
        "127.0.0.")
            echo "you chose choice $opt$1"
            ping -c4 $opt$1 ;;
        "10.0.2.")
            echo "you chose choice $opt$1"
            ping -c4 $opt$1 ;;
        "Costum")
            echo -n "Enter the Ip or domainname: " 
            read ipa
            ping -c4 $ipa ;;
        "Scan all ip in lan")
            for i in $(seq 254); do ping 192.168.1.$i -c1 -W1 & done | grep from
            ;;

        "Exit")
            break ;;
        *) echo invalid option ;;
    esac
done

if [ ! -n "$1" ]
then
echo "Usage: `basename $0` argument1 etc."
exit $E_BADARGS
fi

