Dotfiles
========

2023-05-30:
-----------

My vanilla vimrc needs a tune up. I've been working on remote servers a lot
more recently and I need a clean basic setup. 


2023-04-12:
-----------

I don't think my deep dive into neovim was for a loss. Vim will always be there. 
The terminal will always be there. It is nice to have a nice set up. I could
probably scale things way back. I am not really using the LSP much. I like the
colors. Treesitter is nice. I will need to thing about what is a best setup. 

2023-04-06:
-----------

Well that was quick. Today my boss granted me access to CoPilot using PyCharm. 

I downloaded PyCharm-CE and installed the Vim and CoPilot plugin. Oh man, I am rocking. 

Maybe I will use PyCharm for a while and leave all of this neovim stuff behind. 

I don't know. I have been struggling getting everything configured just the way I want it. 

PyCharm is pretty cool. 


2023-04-03:
-----------

Well the time has come where I feel the urge to mix it up and re-write my whole config. 

This time with Neovim!

I am using [ThePrimeagen's init.lua](https://youtu.be/w7i4amO_zaE) as a reference.



Old Stuff:
----------

Steps for setting up a new machine

```bash
git clone https://github.com/eitanlees/dotfiles.git
cd ./dotfiles
./makesymlinks.sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Then launch vim and run 

```vim
:PlugInstall
```

quit and relaunch vim to check installation. You should then be up and running. See [vim-plug](https://github.com/junegunn/vim-plug) installation page if there is any trouble.

If you would like to install [Oh-My-ZSH](https://ohmyz.sh/) then try running 

```bach
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

but I haven't tested that yet.


2019-04-26 12:39:09
--------------------
I think I succesfully rebooted vim. I want to focus on having a more simple vimrc, and I think using vim-plug will help with managing packages. Now I need to slowly go through my old vimrc and figure out what I need/am missing. 

2019-04-26 09:28:40 
--------------------
I believe my oh-my-zsh reboot is going well. I will now attempt the vim config. Note, I have left `TODO`
markers throughout of things that would be nice to add. 


2019-04-26 08:40:23 
--------------------

I want to start over again with my development tools.

I need to take notes about things I need to recover. 

- Important aliases (Done, added to bottom of `.zshrc`)
- the autojump j command (Done, its a oh-my-zsh packagge)
- python path, and conda stuff (Done, added two lines from previous config)


Old Version
-----------

A repository to store my configurations and dotfiles

## Useful Links

### Vim

[A Good Vimrc by Doug Black](http://dougblack.io/words/a-good-vimrc.html)

### Tmux

[My Tmux Configuration by Mark H. Nichols](http://zanshin.net/2013/09/05/my-tmux-configuration/)

### Zsh

[My Extravagant Zsh Prompt by Steve Losh](http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/)
