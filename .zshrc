 ###########################
  ##                     ##
  ##   ##.zshrc file##   ##
  ##   "the file where   ##
  ##    "you edit the    ##
  ##       options!"     ##
  ##                     ##
 ###########################

## tools
fetchTool="neofetch"       ## to be used inside aliases.zsh and boot.zsh (string)
 fetchAtBoot="true"        ## shows specified fetch tool at startup (boolean)
musicTool="termusic"       ## music tool to be used inside aliases.zsh (string)
dirTool="eza"              ## to be used inside aliases.zsh, configure aliases.zsh since it already comes with some options, eza is recommended! (string)
fileManager="nimmm"        ## friendship ended with fff, now i'm friends with nimmm (string)

## useful stuff
H="$HOME"                  ## shortcut for other files
Z="$H/.zsh"                ## easy access for soucing files inside .zsh
ZZ="$H/.zsh/zinit"         ## easy access for sourcing files inside .zsh/zinit
notifsShow="true"          ## shows a message if something fails inside a script, enabled by default (boolean)

## misc
isNix="true"               ## toggle if you use nix (you get a cool message) (boolean)

### loads

source "$Z/misc.zsh"       ## loads misc (but important) stuff, should be runned
source "$ZZ/loader.zsh"    ## loads zinit
source "$ZZ/plugins.zsh"   ## loads plugins
source "$Z/userthemes.zsh" ## user themes, check the file as it contains the booleans for the themes! "rainbowBash" is enabled by default
# source "$Z/starship.zsh" ## loads starship
source "$Z/boot.zsh"       ## loads boot commands
source "$Z/aliases.zsh"    ## loads aliases

##### end of file
