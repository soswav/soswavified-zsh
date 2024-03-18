#!/usr/bin/env bash

RED='\033[0;31m' 
GREEN='\033[0;32m'
NC='\033[0m'

H="$HOME"
CD="$H/soswavified-zsh"
CDD="$H/.zsh"
FIL="$H/.zshrc"

if [[ -d $CD ]]; then
  rm -rf "$CD"
fi

function installer() {
  if command -v git >/dev/null; then
    echo -e "${GREEN}git was found! cloning \"soswav/soswavified-zsh\" from codeberg..${NC}"
    git clone https://codeberg.org/soswav/soswavified-zsh.git
    cd "$CD" || exit
    echo -e "cloning done!"
  else
    echo -e "${RED}git not found, trying package managers..${NC}"
    if command -v pacman >/dev/null; then
      sudo pacman -Syu git && installer
    elif command -v dnf >/dev/null; then
      sudo dnf install git && installer
    elif command -v apt-get >/dev/null; then
      sudo apt-get install git && installer
    else
      echo -e "${RED}package manager not found! install git with your package manager or build it yourself!${NC}"
    fi
  fi

  if command -v zsh >/dev/null; then
    echo -e "${GREEN}zsh found! resuming installation...${NC}"
  else
    echo -e "${RED}zsh NOT found! attempting to install with package managers...\nplease note that this will use sudo! it obviously won't delete your home directory, but if you don't trust me and want to be extra cautious; then check the script! if you want to install the package yourself with your own package manager, then press CTRL+C! i'm giving you 10 seconds, though.${NC}" ; sleep 10
    if command -v pacman >/dev/null; then
      sudo pacman -Syu zsh
    elif command -v dnf >/dev/null; then
      sudo dnf install zsh
    elif command -v apt-get >/dev/null; then
      sudo apt-get install zsh
    fi
  fi
}

function backup() {
   if [[ -d $CDD ]] && [[ -a $FIL ]]; then
       mkdir -p "$H/backup"
       mv $CDD $H/backup
       mv $FIL $H/backup
       echo -e "${GREEN}backup complete!${NC}"
   fi 
}

backup
installer
mv .zsh $H
mv .zshrc $H
echo -e "${GREEN}finished!${NC}"
