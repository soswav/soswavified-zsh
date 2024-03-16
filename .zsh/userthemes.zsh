##### userthemes.zsh file

## theme booleans
weirdDefault="false"
# hostname% 
rainbowBash="false"
# [user@hostname ~]$
nixTheme="true"
# 󱄅 ~ >

if [[ "$rainbowBash" == "true" ]]; then
  PS1='%F{red}[%f%F{yellow}%n%f%F{green}@%f%F{blue}%m%f %F{171}%~%f%F{red}]%f$ ' # [user@hostname ~]$ (the ~ is the directory)
elif [[ "$weirdDefault" == "true" ]]; then
  PS1='%m%% ' # host% (the "host" is the hostname)
elif [[ "$nixTheme" == "true" ]]; then
  PS1='%F{cyan}󱄅%f %F{blue}%~%f > ' # 󱄅 ~ > (the "~" is the directory)
else
  PS1='%m%% ' # same as weirdDefault
fi

##### end of file
