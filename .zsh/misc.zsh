  GNU nano 7.2                                                                     /home/soswav/.zsh/misc.zsh                                                                               
##### misc.zsh file

HISTFILE=1000000              ## i forgot
SAVEHIST=1000000              ## i also forgot
HISTFILE="$Z/.history/cache"  ## history file

export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$H/.local/bin

if [[ "$soswavTheme" == "true" ]]; then
  PS1='%F{red}[%f%F{yellow}%n%f%F{green}@%f%F{blue}%m%f %F{171}%~%f%F{red}]%f$ '
fi

##### end of file
