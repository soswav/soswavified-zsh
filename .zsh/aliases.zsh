##### aliases.zsh file

alias fetch="$fetchTool"                                    ### change to your fetch tool, or just remove the alias
alias cclear="clear ; source ~/.zshrc"                      ### reloads config, i personally use this for testing (or clearing my terminal)
alias blahaj="display3d $H/Documents/blahaj.obj -t 0,0,5.5" ### you should disable this if you don't have display3d (nor have the file)
alias f="$fileManager"                                      ### file manager specified in .zshrc
alias ping1="ping 1.1.1.1"                                  ### pings cloudflare's DNS (for testing my internet speed ig)
alias ping8="ping 8.8.8.8"                                  ### pings google's DNS (also for testing my internet speed)
alias ping9="ping 9.9.9.9"                                  ### pings quad nine's DNS (testing)
alias vim="nvim"                                            ### :troll:
alias neovim="nvim"                                         ### :troll:
alias vi="nvim"                                             ### :troll:

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
    echo -e "command not found!"                ## prints to the terminal "command not found!"
  fi                                           ### end of the if statement
}                                             #### end of function

alias dirs="$dirTool --icons always -F -l"                       ### to see directories easier
alias dirsa="$dirTool --icons always -F -la"                     ### to see all directories easier

##### end of file
