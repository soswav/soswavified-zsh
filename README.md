# soswavified-zsh
*ZSH but at my likings.*

After thinking for a while *(almost 3 hours)*, I said to myself:
> Wait, why not share it?
>
> I mean, some people may have better setups and all.. And I REALLY don't want to get roasted for being so.. simple..
>
> Well.. Why not just make it have an installer AND also be called 
*"soswavified"* to avoid getting roasted?

And this is pretty much why I made this, uh, thing.

This currently needs:
```diff
+ zsh (duh)
+ display3d (optional)
+ exa (optional)
```
You can get `display3d` [here](https://github.com/redpenguinyt/display3d) *(cool rice, dude!)*

You can probably get the others from your package manager, or simply build them yourself. Once again, **they are optional**.

Every file inside the repository has some information on what does what, but considering you're using ZSH I bet you already know what does what.

## Yeah yeah, but how do I install it?
Simple! just clone the repo and move all the files *(.zshrc and .zsh)* to your home directory. 

```sh
cd $HOME ; git clone http://github.com/soswav/soswavified-zsh
```

Considering that you're *not* using the installer, you probably already know some stuff about your terminal.

Now, just move the `.zshrc` file to whereever you want as I **seriously** want you to backup your stuff.

Now that you've done that, just run:
```sh
mv $HOME/soswavified-zsh/.zsh $HOME ; mv $HOME/soswavified-zsh/.zshrc $HOME
```
That should move the files to your home folder.

## Nah, I'm too lazy for cloning and moving the files a bit.
1. First of all, OK.
2. Second of all, Sure!

Just run this in your terminal:
```sh
cd $HOME ; wget http://raw.githubusercontent.com/soswav/soswavified-zsh/main/installer.sh ; chmod u+x installer.sh ; ./installer.sh
```
Sends you to your home directory, downloads the installer, makes it executable, and executes it. 

You should also read the installer file but considering you're *this* lazy, you probably won't.

## Okay, sure, but how do I customize?
Go to your .zsh folder and edit the files.

That's all. Just.. edit. And if **SOMEONE** ever asks me how to add aliases I'll finally complete this section.