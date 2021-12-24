# Jeff's Personal Configurations

This project contains my preferred configuration settings for the
software programs I work with, as well as scripts to update my
settings on my various computers.

No, it does not contain my passwords or other private information.

## Getting Started

### Linux

Open your Terminal, then cd into this personal-config directory and
run this command:

```bash
./setup.sh
```

Note: this command can be run as many times as needed. If things are
already installed, it won't do anything.

### Windows

Run the ``setup.cmd`` script as an administrator.

Then, apply these settings:

* Copy global.gitignore to ~/.gitignore_global
* Copy .gitconfig to ~/.gitconfig
* Make ``jeff.ahk`` run at startup (you may need to install a program called AutoHotkey to do this).
* Copy ``system-paths.cmd`` to your home directory, then change the paths to point to the right places.

## What's In The Box

* ``setup.cmd`` sets up some of the components automatically.
* ``.vimrc`` contains my Vim configuration.
* ``profile.cmd`` script sets up environment variables, so that strange ``PATH`` environment variable settings don't surprise me.
* ``jeff.ahk`` is an AutoHotkey script that remaps keys.
* The ``fonts`` folder contains fonts for the Vim Powerline theme. These fonts contain custom graphics used by the Powerline theme.

## Roadmap

### Features to Add

* Configure PuTTY with Hack as its default font, plus a nice default color scheme.

### Usability Problems

* The ``setup.cmd`` script doesn't really check to see if components are already installed.
* It also doesn't install all of the necessary components.

## License

MIT License: see LICENSE for full text.

