# soswavified-zsh
*ZSH but at my likings.*

After thinking for a while *(almost 3 hours)*, I said to myself:
> Wait, why not share it?
>
> I mean, some people may have better setups and all.. And I REALLY don't want to get roasted for having such a bad configuration...
>
> Well.. Why not just make it have an installer?

And this is pretty much why I made this, uh, thing.

This currently needs:
```diff
+ zsh (duh)
+ a brain (optional)
```
You can probably get them from your package manager, or simply build them yourself.

## Yeah yeah, but how do I install it?
Simple! just clone the repo and move all the files *(.zshrc and .zsh)* to your home directory. 

```sh
cd "$HOME" ; git clone https://codeberg.org/soswav/soswavified-zsh
```
>[!NOTE]
>Codeberg link because it's the one I update first.

Considering that you're **not** using the installer, you probably already know some stuff about your terminal.

Now, just move the old `.zshrc` file to whereever you want as I **seriously** want you to backup your stuff.

Now that you've done that, just run:
```sh
mv $HOME/soswavified-zsh/.zsh $HOME ; mv $HOME/soswavified-zsh/.zshrc $HOME
```
That should move the files to your home folder.

## Nah, I'm too lazy for cloning and moving the files a bit.
1. First of all, OK.
2. Second of all, sure!

Just run this in your terminal:
```sh
cd $HOME ; curl -O https://github.com/soswav/soswavified-zsh/raw/branch/main/installer.sh ; chmod +x installer.sh ; ./installer.sh
```
>[!NOTE]
>Currently, the installer is being updated.

Sends you to your home directory, downloads the installer, makes it executable, and executes it. 

You should also read the installer file but considering you're **this** lazy, you probably won't read it.

## Okay, sure, but how do I customize?
Go to your .zsh folder and read the **README.md** file.

I'll update it constantly to tell you *"What Does What"*.

## Nah dude, this config SUCKS.
Open a issue and tell me what I should improve then! 

...And don't be mean, please?

### Themes??? What??
I'm currently trying to implement booleans in my configuration! I'm also attempting to make good-looking themes.

Here's what some of them look like: (hover over them to see their name)

![isNix](https://github.com/soswav/soswavified-zsh/assets/154848161/4cad895c-2f9b-4ab3-99c5-49ab3aa6055d)
![rainbowBash](https://github.com/soswav/soswavified-zsh/assets/154848161/21e70784-0c7f-4a60-a3f5-f036ec92906f)
![weirdDefault](https://github.com/soswav/soswavified-zsh/assets/154848161/7ee3007e-66d7-4da1-befb-eaf4f183b370)
