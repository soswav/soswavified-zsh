##### .zshrc file

### variables

H="$HOME"                  ## shortcut for other files
Z="$H/.zsh"                ## easy access for soucing files inside .zsh
ZZ="$H/.zsh/zinit"         ## easy access for sourcing files inside .zsh/zinit
FETCHTOOL="uwufetch"       ## to be used inside aliases.zsh and boot.zsh
DIRTOOL="eza"              ## to be used inside aliases.zsh, configure aliases.zsh since it already comes with some options ||| eza is recommended!

### loads

source "$Z/misc.zsh"       ## loads misc (but important) stuff, should be runned
source "$ZZ/loader.zsh"    ## loads zinit
source "$ZZ/plugins.zsh"   ## loads plugins
source "$ZZ/themes.zsh"    ## loads themes
#source "$Z/starship.zsh"  ## loads starship
source "$Z/aliases.zsh"    ## loads aliases
source "$Z/boot.zsh"       ## loads boot commands

### other options
# if [ -e $H/.nix-profile/etc/profile.d/nix.sh ]; then . $H/.nix-profile/etc/profile.d/nix.sh; fi # uncomment if nix is installed

##### end of file
