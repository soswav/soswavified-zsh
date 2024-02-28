##### .zshrc file

### variables

H="$HOME"                  ## because i love simple stuff!
Z="$H/.zsh"                ## easy access for soucing files inside .zsh
ZZ="$H/.zsh/zinit"         ## easy access for sourcing files inside .zsh/zinit
FETCHTOOL="uwufetch"       ## to be used inside some files, leave blank to disable

### loads

source "$Z/misc.zsh"       ## loads misc (but important) stuff, should be runned
source "$ZZ/loader.zsh"    ## loads zinit
source "$ZZ/plugins.zsh"   ## loads plugins
source "$ZZ/themes.zsh"    ## loads themes
#source "$Z/starship.zsh"  ## loads starship
source "$Z/aliases.zsh"    ## loads aliases
source "$Z/boot.zsh"       ## loads boot commands

##### end of file
