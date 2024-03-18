#!/usr/bin/env bash

RED='\033[0;31m'    # red color
GREEN='\033[0;32m'  # green color
NC='\033[0m'        # white color (no color)

H="$HOME"

function checkzsh() {
   if command -v zsh >/dev/null; then
     echo -e "${GREEN}zsh found, resuming...${NC}"
   else
     echo -e "${RED}zsh not found! attempting to install with various package managers..${NC}"
     if command -v apt-get >/dev/null; then
       sudo apt-get install zsh
     elif command -v pacman >/dev/null; then
       sudo pacman -Syu zsh
     elif command -v dnf >/dev/null; then
       sudo dnf install zsh
     elif command -v nix-env >/dev/null; then
       echo -e "${RED}please note that this installer will use nix-env: add \"zsh\" to your packages list if you're on nixos${NC}"
       nix-env -i zsh # no -iA because idfk lmaoo
     fi
   fi
}

function backup() {
   if [[ -d "$H/.zsh" ]] || [[ -a "$H/.zshrc" ]]; then
       mkdir -p "$HOME/backup"
       [[ -d "$H/.zsh" ]] && mv "$HOME/.zsh" "$HOME/backup"
       [[ -a "$H/.zshrc" ]] && mv "$HOME/.zshrc" "$HOME/backup"
       echo -e "${GREEN}backup complete!${NC}"
    else
      exit
   fi 
}

function checkgit() {
   if command -v git >/dev/null; then
     echo -e "${GREEN}git found, resuming...${NC}"
   else
     echo -e "${RED}git not found! attempting to install with various package managers..${NC}"
     if command -v apt-get >/dev/null; then
       sudo apt-get install git
     elif command -v pacman >/dev/null; then
       sudo pacman -Syu git
     elif command -v dnf >/dev/null; then
       sudo dnf install git
     elif command -v nix-env >/dev/null; then
       echo -e "${RED}please note that this installer will use nix-env: add \"git\" to your packages list if you're on nixos${NC}"
       nix-env -i git # no -iA because idfk lmaoo
     fi
    fi
}

if [[ "$1" == "--start" ]] || [[ "$1" == "-S" ]]; then  # if the user adds the argument "--start" or "-S" to the script
  echo -e "${GREEN}starting installer with no extra options..${NC}" ; sleep 3
else
  echo -e """
  ${RED}invalid option
  options:${NC}

  ${GREEN}
  --start           starts the installer
  -S                starts the installer
  --already-cloned  uses directory mentioned after \"start\"
  ${NC}
  example:
  ./installer.sh --start --already-cloned \$HOME/soswavified-zsh
  """
  exit
fi

echo -e "${GREEN}continuing with installation, i'll give you 5 seconds in case you didn't want to run the installer just yet..\n\n${RED}please note that the script will use sudo! check the file if you don't trust us with sudo!${NC}" ; sleep 5


if [[ "$2" == "--already-cloned" ]] && [[ -d "$3/.zsh" ]] && [[ -a "$3/.zshrc" ]]; then
  echo -e "${GREEN}already-cloned applied, all essential files inside the folder were found${NC}"
  checkzsh
  backup
  mv "$3/.zsh" "$H"
  mv "$3/.zshrc" "$H"
  echo -e "${GREEN}installation complete!${NC}"
else
  checkgit
  echo -e "${GREEN}cloning codeberg repository... (this is the one i update the most)${NC}"
  git clone https://codeberg.org/soswav/soswavified-zsh || exit
  checkzsh
  backup
  mv "$H/soswavified-zsh/.zsh" "$H"
  mv "$H/soswavified-zsh/.zshrc" "$H"
  rm -rf "$H/soswavified-zsh"
  echo -e "${GREEN}installation complete!${NC}"
fi
