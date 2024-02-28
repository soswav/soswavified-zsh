#### README.md
Here you'll learn exactly what I said before in the previous `README.md`; **"what does what"**

First of all, I would like to mention that this is **my config** and I will *(mostly)* use this to reinstall my config in case something bad happens to my install *(or I decide to distrohop to another distribution)*. 

Second of all: **I'm still learning some stuff and you are expected *(sort of)* to fix some stuff in case you mess something up with my configuration.** I know that it sounds very, well, **serious**. But it isn't! If you follow some tutorials *(or rtfm)* you may be able to fix some stuff by yourself. I also **highly** recommend you to install the configuration manually as there may be issues in the installer.

Well, now I'll actually say **"what does what"**.

## .zsh/
This is the folder that goes inside your `$HOME` *(`~`)* directory.

This folder is sortof well organized. At first glance, you will notice a set of files:
1. `.history` | This is where you can find the cache, AKA your commands history. 
   - `cache` | Where your history is saved.
2. `zinit/` | Where most of Zinit-related stuff is located.
   - `loader.zsh`  | Loads Zinit and attempts to install if not installed already.
   - `plugins.zsh` | Where plugins to load with Zinit are located.
   - `themes.zsh`  | Where you place your theme from the [Oh-My-Zsh](https://github.com/ohmyzsh/ohmyzsh) repositories.
3. `aliases.zsh` | Where the aliases are located.
4. `boot.zsh` | Commands to be runned at startup. I usually use this with a fetch tool such as [Nitch]().
5. `misc.zsh` | Misc stuff that I run at startup. They are **mostly** important.
6. `starship.zsh` | Loads [Starship](https://starship.rs) with Zinit.
>[!TIP]
> I recommend reading the comments in every file as they can be useful if you want to customize.

Now, you may ask:

> why zinit tho :thinking:

Well, I want speed and, well, Zinit lets me do just that. Zinit also allows me to use themes from the [Oh-My-Zsh repository](https://github.com/ohmyzsh/ohmyzsh), which is also pretty good. I recommend checking [Zinit's GitHub repository](https://github.com/zdharma-continuum/zinit) as it contains information on how to migrate from Oh-My-Zsh and other useful information you may want to know.

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

Not much to be said about the file.

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

#### zinit/themes.zsh
This is where you can load themes from the [Oh-My-Zsh](https://github.com/ohmyzsh/ohmyzsh) repository. You can find a list of the themes in the [wiki](https://github.com/ohmyzsh/ohmyzsh/wiki), especially in the "Themes" section.

To set one you like, simply go to the file and edit this line:
```sh
zi snippet OMZT::kardan # Edit "kardan" to whatever you like.
```
>[!NOTE]
> You could also use some of my "recommended" themes below that line. But again, it's up to *you*.

## .zsh/aliases.zsh
Where aliases can be found. This file contains some dependencies but it's up to you if you want to use them or not. Some of them include:
1. `fff` | Really fast file manager. Link to the repository [here](https://github.com/dylanaraps/fff).
2. `nnn` | Another file manager if `fff` wasn't enough for you. Link to the repository [here](https://github.com/jarun/nnn).
3. `exa` | `ls`-like tool. Provides color and icons. Link to the repository [here](https://github.com/ogham/exa).
4. `display3d` | Display 3D models inside your terminal. You may recognize it if you like to lurk [r/unixporn](https://reddit.com/r/unixporn). The repository can be found [here](https://github.com/redpenguinyt/display3d).
5. 
Some of the defaults aliases are the following:

1. `fetch` | Prints computer info; uses fetch tool mentioned in `.zshrc`. Defaults to `uwufetch`.
2. `cclear` | Used to reload config/clear the screen.
3. `blahaj` | **Requires `display3d`.** Shows a spinning shark in your terminal if `display3d` is installed and if `blahaj.obj` is avaible in your `Documents` folder.
4. `f` | Opens FFF.
5. `n` | Opens NNN.
6. `ping1`, `ping8`, and `ping9` | Testing internet speed.
7. `cdl` | Sends terminal to directory while also showing directories with `exa`.
8. `dirs` | Shows directories inside current folder. Uses `exa`.
9. `dirsa` | Shows all directories inside current folder. Uses `exa`.

## .zsh/boot.zsh
Where commands that run at boot can be found. The default is the fetch tool mentioned in `.zshrc`.

Not a lot to be said other than the default fetch is `uwufetch`.

## .zsh/misc
Commands that are misc but should still be runned.

Not a lot to be said.

## .zsh/starship.zsh
Loads Starship with Zinit.

Commented out by default in `.zshrc`. Not a lot to be said.

# .zshrc
This is where all of the previous files are located, `aliases.zsh`, `boot.zsh` and so on.

You can comment out stuff you currently don't want in your config; it really just depends on you.
