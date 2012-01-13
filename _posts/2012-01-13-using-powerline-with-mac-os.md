---
layout: post
title: Using Powerline with Mac OS
tags:   
- vim
- programming
---

![Powerline, Mac OS Style](/images/vim-powerline.png)

[vim-powerline](https://github.com/Lokaltog/vim-powerline) by Kim Silkebækken is a great plugin, but it's a little bit tricky to get it looking right in Mac OS.  I've tested it in both Snow Leopard and Lion and figured out how to get it working nicely.

Snow Leopard's Terminal application doesn't support 256 colours, so I started using [iTerm2](http://www.iterm2.com/) instead.  With a little bit of configuration it's functionality equivalent to Terminal, and offers tonnes of extras.  Lion's Terminal is fine.  Both need to report `xterm-256color`, so ensure this is set up in the Preferences pane.
To get the cool UTF-8 fonts you'll need patched fonts.  Nick Quaranto posted some suitable fonts here: [vim-powerline patched fonts](https://gist.github.com/1595572).  I like "Menlo" myself.

Next, read the Powerline documentation.  When the author says `set nocompatible` and `set laststatus=2` are required he means it, so add those to `~/.vimrc`.  I also had to add `set t_Co=256` and `let g:Powerline_symbols = 'unicode'`.

Changing `Powerline_symbols` requires the cache to be cleared, so `rm /tmp/Powerline.cache`.

Now your vim should look like Kim's screenshots in the Powerline repository.
