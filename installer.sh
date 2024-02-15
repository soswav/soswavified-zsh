#!/bin/bash

# colors
RED='\033[0;31m' 
GREEN='\033[0;32m'
NC='\033[0m'

CD="$HOME/soswavified-zsh"
FILE="$HOME/.zshrc"

cd "$HOME" ; clear

gitfail() { 
    if command -v git > /dev/null; then
        echo -e "${GREEN}git is already installed, retrying clone...${NC}" ; git clone http://github.com/soswav/soswavified-zsh.git
    else
        if command -v pacman > /dev/null; then
            echo -e "${GREEN}installing git with pacman...${NC}";sleep 3
            sudo pacman -S git && git clone http://github.com/soswav/soswavified-zsh.git
        elif command -v dnf > /dev/null; then
            echo -e "${GREEN}installing git with dnf...${NC}";sleep 3
            sudo dnf install git && git clone http://github.com/soswav/soswavified-zsh.git
        elif command -v apt > /dev/null; then
            echo -e "${GREEN}installing git with apt...${NC}";sleep 3
            sudo apt install git && git clone http://github.com/soswav/soswavified-zsh.git
        else
            echo -e "${RED}you don't have pacman, dnf or apt!! install git manually because i don't know what you're using!${NC}"
        fi
    fi
}

zsh-check() { 
    if command -v git > /dev/null; then
        echo -e "${GREEN}zsh is installed!${NC}" ; sleep 3
    else
        if command -v pacman > /dev/null; then
            echo -e "${GREEN}installing zsh with pacman...${NC}";sleep 3
            sudo pacman -S zsh
        elif command -v dnf > /dev/null; then
            echo -e "${GREEN}installing zsh with dnf...${NC}";sleep 3
            sudo dnf install zsh
        elif command -v apt > /dev/null; then
            echo -e "${GREEN}installing zsh with apt...${NC}";sleep 3
            sudo apt install zsh
        else
            echo -e "${RED}you don't have pacman, dnf or apt!! install zsh manually because i don't know what you're using!${NC}"
        fi
    fi
}

clear
echo -e "${RED}checking you have ZSH installed...${NC}" ; sleep 3 ; zsh-check
clear
cd "$CD" && echo -e "${RED}folder exists, deleting...${NC}";rm -rf "$CD"
sleep 1;clear;cd "$HOME" || exit
echo -e "${GREEN}cloning git repo...${NC}" ; git clone http://github.com/soswav/soswavified-zsh.git || gitfail

if [ -f "$FILE" ]; then
    while true; do
        read -p "do you want to backup the present .zshrc file? (y/n)" choice
        case "$choice" in  
         [yY]* )  
           cp "$FILE" "$FILE.backup"
           echo -e "${GREEN}.zshrc file backed up! moving new one...${NC}"
           sleep 2 ; rm -rf "$FILE" ; mv "$CD/.zshrc" "$HOME"
           break
           ;;
         [nN]* )  
           echo -e "${RED}no backup performed!${GREEN} deleting file and moving the new one...${NC}"
           sleep 2 ; rm -rf "$FILE"
           mv "$CD/.zshrc" "$HOME"
           break
           ;;
        esac
    done
else
    echo -e "${RED}.zshrc file does not exist! moving files...${NC}" ; mv "$CD/.zshrc" "$HOME"
fi

sleep 2

mv "$CD/.zsh" "$HOME"

clear
echo -e "you didt it! you installed my super cool ZSH CONFIG!!! yay! good job!" ; sleep 1