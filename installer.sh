
Issues
Pull Requests
Milestones
Explore
[sleeping on sound waves]
soswav
/
soswavified-zsh
Code
Issues
Pull Requests
Packages
Projects
Releases
Wiki
Activity
Settings
soswavified-zsh
/installer.sh
83 lines
2.9 KiB
Bash
Executable File
#!/bin/bash

# colors
RED='\033[0;31m' 
GREEN='\033[0;32m'
NC='\033[0m'

CD="$HOME/soswavified-zsh"
FILE="$HOME/.zshrc"

clear

gitfail() { # checks for git
    if command -v git > /dev/null; then
        echo -e "${GREEN}Git is already installed, retrying clone...${NC}" ; git clone https://codeberg.org/soswav/soswavified-zsh.git
    else
        if command -v pacman > /dev/null; then
            echo -e "${GREEN}installing git with pacman...${NC}";sleep 3
            sudo pacman -S git && git clone https://codeberg.org/soswav/soswavified-zsh.git
        elif command -v dnf > /dev/null; then
            echo -e "${GREEN}installing git with dnf...${NC}";sleep 3
            sudo dnf install git && git clone https://codeberg.org/soswav/soswavified-zsh.git
        elif command -v apt > /dev/null; then
            echo -e "${GREEN}installing git with apt...${NC}";sleep 3
            sudo apt install git && git clone https://codeberg.org/soswav/soswavified-zsh.git
        else
            echo -e "${RED}I'm sorry but your package manager isn't in my script. Please install Git manually.${NC}"
        fi
    fi
}

zsh-check() { # checks for zsh
    if command -v zsh > /dev/null; then
        echo -e "${GREEN}ZSH is installed!${NC}" ; sleep 3
    else
        if command -v pacman > /dev/null; then
            echo -e "${GREEN}Installing zsh with pacman...${NC}";sleep 3
            sudo pacman -S zsh
        elif command -v dnf > /dev/null; then
            echo -e "${GREEN}Installing zsh with dnf...${NC}";sleep 3
            sudo dnf install zsh
        elif command -v apt > /dev/null; then
            echo -e "${GREEN}Installing zsh with apt...${NC}";sleep 3
            sudo apt install zsh
        else
            echo -e "${RED}I'm sorry but your package manager isn't in my script. Please install ZSH manually.${NC}"
        fi
    fi
}

echo -e "${RED}Checking if you have ZSH installed...${NC}" ; sleep 3 ; zsh-check

if [ -d "$CD" ]; then
    echo -e "${RED}Folder exists, deleting...${NC}" ; rm -rf "$CD" ; sleep 1
fi

echo -e "${GREEN}Cloning Git repository...${NC}" ; git clone https://github.com/soswav/soswavified-zsh.git || gitfail

if [ -f "$FILE" ]; then
    while true; do
        read -p "do you want to backup the present .zshrc file? (y/n)" choice
        case "$choice" in  
         [yY]* )  
           cp "$FILE" "$FILE.backup"
           echo -e "${GREEN}.zshrc file backed up! Moving new one...${NC}"
           sleep 2 ; rm -rf "$FILE" ; mv "$CD/.zshrc" "$HOME"
           break
           ;;
         [nN]* )  
           echo -e "${RED}No backup was performed.${GREEN} Deleting file, moving the new one...${NC}"
           sleep 2 ; rm -rf "$FILE"
           mv "$CD/.zshrc" "$HOME"
           break
           ;;
        esac
    done
else
    echo -e "${RED}.zshrc file does not exist! Moving files...${NC}" ; mv "$CD/.zshrc" "$HOME"
fi

sleep 2 ; mv $CD/.zsh $HOME

echo -e "${GREEN}You did it! You have successfully installed my ZSH version!${NC}" ; sleep 1
Codeberg

    Documentation
    Community Issues
    Landing Page
    Contributing
    Report Abuse 

Association

    Who are we?
    Bylaws / Satzung
    Donate
    Join / Support
    Contact

Service

    Codeberg Pages
    Weblate Translations
    Woodpecker CI
    Forgejo API
    Status Page

Legal

    Imprint / Impressum
    Privacy Policy
    Licenses
    Terms of Use

Blog | Mastodon | Matrix Space

