#!/bin/bash 


APP="$HOME/.local/share/torbrowser/tbb/x86_64/tor-browser_en-US/Browser/start-tor-browser"

APP="$HOME/.local/tor-browser_en-US/Browser/start-tor-browser"


if [ ! -e "$APP" ] 
then
echo -e "\033[1;32mInstall Tor Browser\033[0m"
cd 
mkdir .local
echo -e "\033[1;32m| === Gpg \033[0m"
gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys 0x4E2C6E8793298290
echo -e "\033[1;32m| === Download \033[0m"
wget -q https://www.torproject.org/dist/torbrowser/8.0/tor-browser-linux64-8.0_en-US.tar.xz.asc
wget -q https://www.torproject.org/dist/torbrowser/8.0/tor-browser-linux64-8.0_en-US.tar.xz
echo -e "\033[1;32m| === Verify  \033[0m"
Err=`gpg --verify *asc  &>/dev/null; echo $?`

if [ !  "x$Err" = x0 ]
then
echo -e "\033[1;31m| === Erreur Certificat \033[0m"
exit
fi

echo -e "\033[1;32m| === Install \033[0m"
xzcat tor-browser-linux64-8.0_en-US.tar.xz|tar -xC .local

echo -e "\033[1;32m| === Clean  \033[0m"
rm *.asc *.xz

fi

$APP

exit
