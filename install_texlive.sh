#!/bin/bash

mkdir ~/texlive/
cd ~/texlive/

tar -xf /vagrant/install-tl-unx.tar.gz
# Unpack the live installer

cd install-tl-*
# Ex:install-tl-20150925
# Depends on your installer version, adjust to your situation

pwd
sudo ./install-tl --profile=/vagrant/texlive.profile
# Run the installer with a custom installation profile

printf "\n" >> ~/.profile
printf "export PATH=\"/usr/local/texlive/2015/bin/i386-linux:\$PATH\"\n" >> ~/.profile
printf "export INFOPATH=\"/usr/local/texlive/2015/texmf-dist/doc/info:\$INFOPATH\"\n" >> ~/.profile
printf "export MANPATH=\"/usr/local/texlive/2015/texmf-dist/doc/man:\$MANPATH\"\n" >> ~/.profile
# Need to set environment variables