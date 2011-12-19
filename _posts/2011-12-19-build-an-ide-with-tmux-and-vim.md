---
layout: post
title:  Build an IDE with tmux and vim
author: "Alex Young"
tags:   
- editing
- vim
---

![Screenshot of vim and tmux](/images/vimtmux.png)

A friend of mine had visited an office where the employees used tmux and vim to edit Ruby projects.  He wanted to know why people would work with the console version of vim, considering the loss of the convenience of mouse input.

I actually find this a good way to work, for several reasons.  Originally, using console vim forced me to learn vim's motion commands properly.  Combined with touch typing, this opened up a range of powerful ways to jump around files and lines arguably more efficiently than by using a mouse.

I like to tile terminals alongside my editor.  My web development work usually requires a console for issuing ad-hoc commands, a database console, and a log viewer.  Some of my projects have test suites that run automatically when files change, so I like to be able to see the status of my tests as well.

There are vim plugins that provide integration with these things, but I feel more comfortable with the vim/tmux combination.  I think it's a visualisation thing.

By using command-line tools this way, we're effectively building a customised, lightweight IDE.  I also find the idea of using Unix commands in my spare tmux console panes appealing, because it's easy to pipe commands together thereby performing complex scriptable operations without the bloat of an IDE.

The difference between this approach and a traditional IDE is this interface adapts around my _current task_, and is only limited by the thousands of commands and scripting languages that I have installed.  Rather than creating a template of some kind, I create tmux panes and vim split windows as required.  Despite Eclipse and Xcode offering task-focused interfaces, I still feel like they get in the way too much.  Particularly in Xcode, where keyboard shortcuts feel like an afterthought, and my hand is consistently on the mouse.

Task switching is another benefit.  I'm a freelancer, so in a typical working day I may switch between three or four projects.  By using tmux, I can detach from a session and come back later, keeping me focused on the current task at hand.  I think this is really an advantage of console vim over GUI vim and a collection of terminals, because Eclipse and Xcode attempt to save interface state when closing a project (although the latest Xcode seems to close my split panes all the time).

### Why People Use `hjkl`

It may seem needlessly awkward or elitist to some, but if you can touch type relatively correctly, vim and tmux (set to using vim's keys) make it easier to keep fingers on home row and off the mouse.

That's the secret of `hjkl` -- people who like it generally touch type correctly.  For those unaccustomed to these keys, try taking it slowly for a few days.  Type deliberately and methodically, making full use of the little fingers.

The `hjkl` argument reminds me of trying to convince novice PC gamers to learn `wasd` over the arrow keys.  At first `wasd` feels less intuitive, but it makes using the keyboard and mouse _together_ a lot easier.  The advantage becomes apparent when actually trying the alternative in earnest.

### Configuration Tips

I use this in my `.tmux.conf`:

{% highlight text %}
set-window-option -g mode-keys vi
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R
{% endhighlight %}

This allows me to move around tmux using vim's movement keys.

If you're struggling to get used to vim's movement keys, try disabling arrow keys for insert mode: [Vim: Making those Arrow Keys Work With You](http://jeetworks.org/node/89).

If you're new to vim, it's also worth remembering that it supports ctags.  The [TagHighlight](https://github.com/abudden/TagHighlight) plugin can dynamically display a panel of tags in a pane for the current buffer.  This is yet another IDE-like feature.

### Dotfiles

Does your IDE's configuration sync between multiple computers?

I have a private git repository called `dotfiles` that has my vim and ctags configuration and plugins.  I wrote a little install script to automatically symbolically link configuration files with the files in my local `dotfiles` repository.  When I get a new computer, one of the first things I do is to check out this repository.  When I start editing a project, vim and tmux behave exactly as expected.

### Copy and Paste

I usually copy and paste console output into vim by using tmux's copy and paste commands.  Depending on how tmux is configured, the exact keyboard shortcuts may vary, so it's worth reading `man tmux` about how this works.  The default should be `ctrl-b [` to enter copy mode, `Space` to start making a selection, `Enter` to copy the selection, then `ctrl-b ]` to paste.

### Motion Commands

To really get efficient with vim, try to always question when a keyboard-heavy operation could have been better served by using the appropriate motion commands.  For example, when I first saw `~` (swap case) I thought "that's cute, I'm never going to use that".  I've actually used it three times while editing this post.

I started to get the hang of motion commands when I noticed more experienced vim users avoid going into insert mode unless necessary.  Keep coming back to vim's help, and you'll be surprised how many ways there are to improve your editing skills.

