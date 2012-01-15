---
layout: post
title: A vim-friendly Mac Keyboard
author: alex
tags:   
- vim
- mac
---

I suspect the ultimate vim keyboard is the [Happy Hacking Professional 2](http://elitekeyboards.com/products.php?sub=pfu_keyboards,hhkbpro2&pid=pdkb400b).  The `Control` key placement is good for vim, tmux, and screen, and the removal of uncessary arrow and function keys appeals to me.  However, it's $300, so I wondered if it's possible to hack the keyboard I already own into being a little bit more vim-friendly.

### Swapping Modifier Keys

On a standard Apple keyboard the position of `Control` sucks.  Fortunately, Apple gives us the ability to swap modifier keys around with no hacking at all.

Under System Preferences, Keyboard, Modifier Keys..., the `Control` and `Caps Lock` keys can be switched:

![Mac keyboard settings](/images/mac_modifier_keys.png)

It only took me a few days to get used to this, and it works well for those of us who type `Control` a million times more often than `Caps Lock`.

### Use hjkl Instead of Arrows

![hjkl hacking](/images/hjkl_mac.png)

[KeyRemap4Macbook](http://pqrs.org/macosx/keyremap4macbook/index.html) allows any key to be remapped, and key repeats to be accelerated.  Of interest to us is the 'Vi mode' setting list, and 'Ubiquitous Vim Bindings'.  I selected 'Fn+hjkl to Left/Down/Up/Right' so I can use `hjkl` to move the cursor in any application.

KeyRemap4Macbook requires a reboot after installation, but once it's running the settings can be changed and experimented with at any time.

