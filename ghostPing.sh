#!/bin/bash
arq="site.txt"

if [ $# -gt 0 ]
then
        echo $* | sed 's/ /\n/g' > $arq

        for i in $(cat $arq)
        do
                nmap -sn $i > temp.txt 2>&1

                if cat temp.txt | grep "1 host up" 1>/dev/null 2>&1
                then
                        echo -e "\033[01;32m# $i: Host Ativo\033[00;00m"
                else
                        echo -e "\033[01;33m# $i: Host Inativo\033[00;00m"
                fi

                rm $arq 2>/dev/null
        done

else

        echo -e "\033[01;34m* Usage: $0 <domain>"
        echo -e "\033[01;32m* Usage: $0 <domain> <domain> ..."
fi
