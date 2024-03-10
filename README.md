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

### I've noticed that the .zshrc file contains a "soswavTheme", what does that mean?
I'm currently trying to implement booleans in my configuration; I may add a completly different folder (and file) to add various themes I made. I \*may\* as well add themes from suggestion.

Here's what "soswavTheme" looks like:

![](https://github.com/soswav/soswavified-zsh/assets/154848161/07689510-87ec-4b95-ad34-5d2b17f1ce68)

Oh man, I sure love my \*\*awesome\*\* screenshot tool! Oh man I sure appreciate my screen resoultion! Oh geez!
