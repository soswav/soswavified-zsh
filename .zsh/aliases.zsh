##### aliases.zsh file

alias fetch="$FETCHTOOL"                                    ### change to your fetch tool, or just remove the alias
alias cclear="clear ; source ~/.zshrc"                      ### reloads config, i personally use this for testing (or clearing my terminal)
alias blahaj="display3d $H/Documents/blahaj.obj -t 0,0,5.5" ### you should disable this if you don't have display3d (nor have the file)
alias f="fff"                                               ### fucking fast filemanager, personally my favorite
alias n="nnn"                                               ### another file manager but cool-looking! i'm personally not using it (currently)
alias ping1="ping 1.1.1.1"                                  ### pings cloudflare's DNS (for testing my internet speed ig)
alias ping8="ping 8.8.8.8"                                  ### pings google's DNS (also for testing my internet speed)
alias ping9="ping 9.9.9.9"                                  ### pings quad nine's DNS (testing)

### dirs stuff ###

function cdl() {                              ### for viewing files inside a folder (while also going inside the folder)
  if [[ -d $1 ]]; then                        ## if directory exists, then run exa, "$1" is the mentioned dir
    cd "$1"                                ## as mentioned above, "$1" is the mentioned dir
    exa --icons always -F -l $2            ## runs exa showing icons as a list with icons ("$2" is for selecing the "-a" or other)
  elif [[ -a $1 ]]; then                      ## if the directory mentioned is a file, then echo to the user
    echo -e "that's a file!"               ## prints to the terminal "that's a file!"
  else                                        ## if none of the above worked (at all) then echo
    echo -e "there was an error"           ## prints to the terminal "there was an error"
  fi
}

alias dirs="exa -l --icons always -F"
alias dirsa="exa --icons always -F -la"

##### end of file
