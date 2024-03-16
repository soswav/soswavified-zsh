##### aliases.zsh file

alias cclear="clear ; source ~/.zshrc"                      ### reloads config, i personally use this for testing (or clearing my terminal)
alias ping1="ping 1.1.1.1"                                  ### pings cloudflare's DNS (for testing my internet speed ig)
alias ping8="ping 8.8.8.8"                                  ### pings google's DNS (also for testing my internet speed)
alias ping9="ping 9.9.9.9"                                  ### pings quad nine's DNS (testing)
alias vim="nvim"                                            ### :troll:
alias neovim="nvim"                                         ### :troll:
alias vi="nvim"                                             ### :troll:

### tools stuff, mostly checking if it exists

if command -v $musicTool >/dev/null; then
  alias m="$musicTool"
elif [[ "$notifsShow" == "true" ]]; then
  echo -e "musicTool \"$musicTool\" not found!"
fi

if command -v $fetchTool >/dev/null; then
  alias fetch="$fetchTool"
elif [[ "$notfisShow" == "true" ]]; then
  echo -e "fetchTool \"$fetchTool\" not found!"
fi

if command -v $fileManager >/dev/null; then
  alias f="$fileManager"
elif [[ "$notifsShow" == "true" ]]; then
  echo -e "fileManager \"$fileManager\" not found!"
fi

### dirs stuff

function cdl() {                              #### for viewing files inside a folder (while also going inside the folder)
  if command -v $dirTool >/dev/null; then      ### if the command exists, continue with this if statement:
    if [[ -d $1 ]]; then                        ## if directory exists, then run "$dirTool"! btw, "$1" is the mentioned dir
      cd "$1"                                            ## as mentioned above, "$1" is the mentioned dir
      $dirTool --icons always -F -l $2                   ## runs "$dirTool" showing icons as a list with icons ("$2" is for selecing the "-a" or other)
    elif [[ -a $1 ]]; then                               ## if the directory mentioned is a file, then echo to the user
      echo -e "i'm sorry, but you're mentioning a file!" ## prints to the terminal "i'm sorry, but you're mentioning a file!"
    fi                                          ## closes if statement
  elif [[ "$notifsShow" == "true" ]];then      ### if the command could not be found and the "notifsShow" variable is "true", do this:
    echo -e "dirTool \"$dirTool\" not found!"   ## prints to the terminal
  fi                                           ### end of the if statement
}                                             #### end of function

if command -v $dirTool >/dev/null; then
  alias dirs="$dirTool --icons always -F -l"
  alias dirsa="$dirTool --icons always -F -la"
elif [[ "$notifsShow" == "true" ]]; then
  echo -e "dirTool \"$dirTool\" not found!"
fi

##### end of file
