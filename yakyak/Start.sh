#!/bin/bash

cd ~

if [ ! -d yakyak ] 
then
git clone https://github.com/yakyak/yakyak.git
cd yakyak
npm install
npm run gulp
fi

cd yakyak

exec npm run electron app
#/bin/bash
