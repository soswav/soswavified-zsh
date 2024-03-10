##### boot.zsh file

if command -v $fetchTool >/dev/null; then ### if the "fetchTool" variable (command) inside ".zshrc" exists, then run it:
    $fetchTool ### runs mentioned fetch tool inside ".zshrc"
elif [[ "$notifsShow" == "true" ]]; then ### if the above didn't work but the "notifsShow" variable is set to "true" inside ".zshrc", then:
    echo "fetch tool mentioned in \n$H/.zshrc\n could not be found! install it first!"
fi ### closes the if statement

if [[ "$isNixOS" == "true" ]]; then ### if the variable inside .zshrc called "isNixOS" has a value of "true", then run this:
  echo -e "Nix 󱄅 loves you! Love it back!"  ### prints in the terminal "Nix 󱄅 loves you! Love it back!" you may want to install nerdfonts, though..
fi ### closes the if statement

##### end of file
