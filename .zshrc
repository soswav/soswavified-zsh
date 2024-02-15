##### .zshrc file #####

Z="$HOME/.zsh"
ZZ="$HOME/.zsh/zinit"

##### loads #####

source "$Z/misc.zsh" ## misc, should be runned ##
source "$ZZ/loader.zsh" ## loads zinit ##
source "$ZZ/plugins.zsh" ## loads plugins ##
# source "$ZZ/themes.zsh" ## loads themes ##
source "$Z/aliases.zsh" ## loads aliases ##
source "$Z/boot.zsh" ## loads boot commands ##
# source "$Z/starship.zsh" ## loads starship ##

##### end of file #####
