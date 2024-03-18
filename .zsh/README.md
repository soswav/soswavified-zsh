#### README.md
Here you'll learn exactly what I said before in the previous `README.md`; **"what does what"**

First of all, I would like to mention that this is **my config** and I will *(mostly)* use this to reinstall my config in case something bad happens to my install *(or I decide to distrohop to another distribution)*. 

Second of all: **I'm still learning some stuff and you are expected *(sort of)* to fix some stuff in case you mess something up with my configuration.** I know that it sounds very, well, serious. But it isn't! If you follow some tutorials *(or rtfm)* you may be able to fix some stuff by yourself. I also **highly** recommend you to install the configuration manually as there may be issues in the installer. Not a lot, though.

Well, now I'll actually say **"what does what"**!

## .zsh/
This is the folder that goes inside your `$HOME` *(`~`)* directory.

This folder is sortof well organized. At first glance, you will notice a set of files:
1. `.history` | This is where you can find the cache, AKA your commands history. [*](#history)
   - `cache` | Where your history is saved. [*](#historycache)
2. `zinit/` | Where most of Zinit-related stuff is located. [*](#zinit)
   - `loader.zsh`  | Loads Zinit and attempts to install if not installed already. [*](#zinitloaderzsh)
   - `plugins.zsh` | Where plugins to load with Zinit are located. [*](#zinitpluginszsh)
3. `aliases.zsh` | Where the aliases are located. [*](#zshaliasezsh)
4. `boot.zsh` | Commands to be runned at startup. I usually use this with a fetch tool such as [Nitch](https://github.com/ssleert/nitch). [*](#zshbootzsh)
5. `misc.zsh` | Misc stuff that I run at startup. They are **mostly** important. [*](#zshmisczsh)
6. `starship.zsh` | Loads [Starship](https://starship.rs) with Zinit. [*](#zshstarshipzsh)
7. `userthemes.zsh` | Themes I made for myself. For a preview, go back to the previous README and go to the bottom of it. [*](#zshuserthemeszsh)
>[!TIP]
> I recommend reading the comments in every file as they can be useful if you want to customize!
>
> The list above \***also**\* contains "`*`" that link to different headers used inside this file; use it as you wish.

Now, you may ask:

> why zinit tho :thinking:

Well, I want speed and, well, Zinit lets me do just that! I recommend checking [Zinit's GitHub repository](https://github.com/zdharma-continuum/zinit) as it contains information on how to migrate from Oh-My-Zsh and other useful information you may want to know.

### .history/
`.history` *(or `.h`)* is where you can find your `cache` file. This is where your ZSH history will be saved.

There is not much that can be said about this folder, other than it was previously named "`.h`".

#### .history/cache
This is where the commands you type will be saved. They are listed something like:
```sh
cd "$HOME/Hello"
cd "$HOME/World"
cd ~
clear
echo -e "Hello,\nWorld!"
```
And so on. You can configure the number of commands listed in `misc.zsh`.

### zinit/
This is where most of the Zinit files can be found.

Once again, there's not much to be said about this folder.

#### zinit/loader.zsh
This is where Zinit will load *(or install if not already)*, Zinit is used due to reasons mentioned above.

Not much to be said about the file other than it loads Zinit. God, I love Zinit so much...

#### zinit/plugins.zsh
Where plugins to load are located. The default Zinit location for plugins is `$HOME/.local/share/zinit/plugins`. I'm pretty sure you can customize the plugins from there but I'm not sure as I have not tested it *yet*.

As mentioned in the [Zinit GitHub repository](https://github.com/zdharma-continuum/zinit), you can load plugins with `zinit load {username}/{repo}` or `zinit light {username}/{repo}`. An example is provided below:
```sh
zinit load marlonrichert/zsh-autocomplete
# "load" loads the plugin slower, but it will be more stable.
# I normally use "load" when I know that I will use a plugin a lot inside the terminal. (or it is simply essential to the user)

zinit load marlonrichert/zsh-autocomplete
# "light" loads the plugin faster, but will be a bit less stable.
# I normally use "light" when the plugin I will use WON'T be used a lot when inside the terminal.
```
>[!NOTE]
> You can find some plugins in [Awesome-Zsh-Plugins](https://github.com/unixorn/awesome-zsh-plugins).

There's also the `turbo` mode. The `turbo` mode is placed above the "loading" of the plugin. The `turbo` mode is for what Zinit is mostly known for; the speed. An example can be seen here:
```sh
zinit ice wait'!0'
zinit load marlonrichert/zsh-autocomplete
# The "zinit ice wait'!0'" will activate the turbo mode. The "'!0'" is not needed and can be replaced with "zinit ice wait 0".
# The turbo mode also works with "light" load:

zinit ice wait'!0'
zinit light marlonrichert/zsh-autocomplete
# Again, it can be replaced with "zinit ice wait 0".
# Theres also the "lucid" mode, which is the "turbo" mode but silent. Here's an example:

zinit ice wait'!0' lucid
zinit load marlonrichert/zsh-autocomplete
# Again, again, "zinit ice wait'!0' lucid" can be replaced with "zinit ice wait 0 lucid"
# It can also be used with the "light" mode.
```
>[!WARNING]
> You should read the GitHub repository for Zinit as I could be wrong. The repository can be found [here](https://github.Icom/zdharma-continuum/zinit).

## .zsh/aliases.zsh
Where aliases can be found. This file contained some *"dependencies"*, which are the ones listed below. Since that was in the past, this are just recommendations for you to use in .zshrc.
1. `fff` | Really fast file manager. Link to the repository [here](https://github.com/dylanaraps/fff).
2. `nnn` | Another file manager if `fff` wasn't enough for you. Link to the repository [here](https://github.com/jarun/nnn).
3. `exa` | `ls`-like tool. Provides color and icons. Link to the repository [here](https://github.com/ogham/exa).

>[!NOTE]
>"exa" is no longer being updated from what I'm aware of. Use [eza](https://eza.rocks/) instead.

4. `display3d` | Display 3D models inside your terminal. You may recognize it if you like to lurk [r/unixporn](https://reddit.com/r/unixporn). The repository can be found [here](https://github.com/redpenguinyt/display3d).

**Some** of the defaults aliases are the following:

1. `fetch` | Prints computer info; uses fetch tool mentioned in `.zshrc`. Defaults to `neofetch`.
2. `cclear` | Used to reload config/clear the screen.
3. `f` | Opens `$fileManager` mentioned in `.zshrc`.
4. `ping1`, `ping8`, and `ping9` | Testing internet speed.
5. `cdl` | Sends terminal to directory while also showing directories with specified `$fileManager` in `.zshrc`.
6. `dirs` | Shows directories inside current folder. Default is `eza`.
7. `dirsa` | Shows all directories inside current folder. Default is `eza`.
8. `m` | Opens music player specified in `.zshrc`.
9. `vim`, `vi`, and `nvim` | Opens neovim. That simple, lol.

## .zsh/boot.zsh
Where commands that run at boot can be found. The default is the fetch tool mentioned in `.zshrc`.

Not a lot to be said.

## .zsh/misc
Commands that are misc but should still be runned.

Not a lot to be said.

## .zsh/starship.zsh
Loads Starship with Zinit.

Commented out by default in `.zshrc`. Not a lot to be said.

## .zsh/userthemes.zsh
Themes made by me or other users. They are \*mostly\* inspired by other themes, so check them out too.

1. `nixTheme` | Did you ever love nix so much that you wanted to make a PS1 thing for it? Totally not me. *( 󱄅 ~ > )*
   - ![nixTheme](https://github.com/soswav/soswavified-zsh/assets/154848161/4cad895c-2f9b-4ab3-99c5-49ab3aa6055d)
2. `rainbowBash` | Default bash theme, but rainbow. Heavily inspired by [Vimjoyer's "Ultimate NixOS Guide | Flakes | Home-manager"](https://invidious.drgns.space/watch?v=a67Sv4Mbxmc&t=305) video. *( [user@hostname ~]$ )*
   - ![rainbowBash](https://github.com/soswav/soswavified-zsh/assets/154848161/21e70784-0c7f-4a60-a3f5-f036ec92906f)
3. `weirdDefault` | Default OhMyZsh theme, I believe. *( hostname% )*
   - ![weirdDefault](https://github.com/soswav/soswavified-zsh/assets/154848161/7ee3007e-66d7-4da1-befb-eaf4f183b370)

# .zshrc
Where all the options are located.

1. `fetchTool` | Fetch tool used in both `.zsh/boot.zsh` and `.zsh/aliases.zsh`. Default: `neofetch` (string)
   - `fetchAtBoot` | If set to `true`, then the fetch tool will be runned at boot. Default: `true` (boolean)
2. `musicTool` | Music tool to be used inside `.zsh/aliases.zsh`. Default: `termusic` (string)
3. `dirTool` | Directory tool to be used. Default: `eza` (string)
4. `fileManager` | File manager to be used inside `.zsh/aliases.zsh`. Default: `nimmm` (string)
5. `isNix` | Shows a cool message at boot for those cool people that use Nix. Default: `true` (boolean)
