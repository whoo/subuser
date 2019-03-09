#!/bin/bash

cd ~

if [ ! -d teams-for-linux ] 
then
git clone https://github.com/ivelkov/teams-for-linux
cd teams-for-linux 
npm i && (cd app && npm i)
fi

cd teams-for-linux 
git pull

exec npm start
#/bin/bash
