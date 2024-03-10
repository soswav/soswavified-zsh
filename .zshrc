##### .zshrc file

### variables

H="$HOME"                  ## shortcut for other files
Z="$H/.zsh"                ## easy access for soucing files inside .zsh
ZZ="$H/.zsh/zinit"         ## easy access for sourcing files inside .zsh/zinit
fetchTool="neofetch"       ## to be used inside aliases.zsh and boot.zsh (string)
dirTool="eza"              ## to be used inside aliases.zsh, configure aliases.zsh since it already comes with some options, eza is recommended! (string)
fileManager="lf"           ## friendship ended with fff, now i'm friends with lf (string)
isNixOS="false"            ## toggle if u want to see a cool text once u boot the interactive shhhhehelll (boolean)
soswavTheme="false"        ## rainbow default bash look, check the README inside .zsh/ to check how it looks (boolean)
notifsShow="true"          ## shows a message if something fails inside a script, enabled by default (boolean)

### loads

source "$Z/misc.zsh"       ## loads misc (but important) stuff, should be runned
source "$ZZ/loader.zsh"    ## loads zinit
source "$ZZ/plugins.zsh"   ## loads plugins
#source "$ZZ/themes.zsh"   ## loads themes
#source "$Z/starship.zsh"  ## loads starship
source "$Z/aliases.zsh"    ## loads aliases
source "$Z/boot.zsh"       ## loads boot commands

##### end of file
