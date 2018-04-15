#!/bin/bash
#Script auto create user SSH
echo -e "=================================================="
echo -e "                                                  " 
read -p "      Username   :  " Login
read -p "      Password   :  " Pass
read -p " Expired (day)   :  " Activetime
echo -e "                                                  " 
echo -e "=================================================="

IP=`dig +short myip.opendns.com @resolver1.opendns.com`
useradd -e `date -d "$Activetime days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"

echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo -e "=================== Account ==================="  | lolcat
echo -e "                                                  " 
echo -e "        Host :    $IP                             "
echo -e "    Username :    $Login                          "
echo -e "    Password :    $Pass                           " 
echo -e "                                                  " 
echo -e "===================Server Ports==================="  | lolcat
echo -e "                                                  "  
echo -e "     OpenSSH : 22, 444                            "  
echo -e "    Dropbear : 143, 3128                          "  
echo -e "     OpenVPN : TCP 1194                           " 
echo -e "       Squid : 8000, 8080 (limit to IP SSH)       "  
echo -e "                                                  "  
echo -e "===================Expiration=====================" | lolcat
echo -e "                      $exp"
echo -e "==================================================" | lolcat
echo -e ""
echo -e "Mod by KEDL" | lolcat
echo -e ""
read -n1 -r -p "  If Youre Done, Press Any Key             "
echo -e "                                                  " 