rc-workstation
==============
Basic user account settings for TCB workstations.

## Installed Packages

The following packages/modules/programs are expected to be installed on all TCB
workstations. They might not need to be installed for this user configuration
to work, but are likely to be referenced in other documentation.

### Pacman Repositories

Install with

```
$ pacman -S [package-name] 
```

- awesome
- chromium
- evince (Document Viewer)
- feh
- firefox
- flashplugin
- gimp
- git
- gmpc (
- gpicview (Image Viewer)
- gvim (includes normal vim)
- inkscape
- mongodb
- ncmpcpp
- nginx
- nodejs
- openssh
- opera
- rsync
- rxvt-unicode
- scrot
- ttf-dejavu
- wget
- xorg-server
- xorg-xev
- xorg-xinit
- xorg-xkbcomp
- xorg-xrandr
- xorg-xrdb
- xorg-xset
- xfce4 (currently installed with ALL options)
- xfce4-terminal
- xterm
- zathura
- zathura-pdf-mupdf

### Arch User Repositories (AUR)

Install with

```
$ yaourt [query]
```

or compile manually (see
<https://wiki.archlinux.org/index.php/AUR#Installing_packages>).

- package-query
- sublime-text (version 2; executable located at /usr/bin/subl)
- ttf-ms-fonts
- yaourt

### Node Modules

Install with 
```
$ npm install -g [name]`
```

- browserify
- gulp
- nodemon
- uglify-js

## Sublime Text 2

### Default Packages

Packages in Sublime are most easily controlled with Package Control
<https://packagecontrol.io/>. Normally one follows the instructions there
(<https://packagecontrol.io/installation#2>). To automate this for you, the
package file for Package Control is placed in .config/sublime-text-2/Installed
Packages. Then sublime installs it automatically.

Remember, you have to install Package Control on all the computers you use it
for.  Detailed information about syncing packages can be found at
<https://packagecontrol.io/docs/syncing>

Currently Sublime Text & Package Control is setup to automatically install the
following packages:

- Dust.js Syntax
- SCSS Syntax

### Suggested Files to Sync

We need to figure out where keyboard bindings and such are found. Right now i
have no idea where those settigns are saved.

## VIM

### .vimrc

Lines 1-7 of `.vimrc` are required for Vundle (see below). Lines 8-15
are the Plugins that Vundle should install.

If you want to use a globally installed Vundle (eg. through AUR) instead,
you can remove lines 4 and 7 (line 4 tells Vim where to find Vundle, and
line 7 tells Vundle to update itself).

Actual (non-plugin related) Vim configuration begins after line 17.

### Plugins

Vim plugins are handled by Vundle at TCB. Vundle can be installed from AUR,
but we recommend following the instructions on [Vundle's GitHub
Page](https://github.com/gmarik/Vundle.vim#quick-start). However, instead
of cloning the repo in step 2, should add it as a submodule when using
Git to track your home directory.
```
$ git submodule add https://github.com/gmarik/Vundle.vim.git .vim/bundle/Vundle.vim
```

Since good practice is to tell Vundle (in `.vimrc`) to handle itself, you should
not really need to update the submodule manually. Just make sure to commit
and pulls that Vundle does automatically.

Currently the following Plugins are default for TCB:

- gmarik/Vundle.vim
- scrooloose/nerdtree
- scrooloose/syntastic
- jimmyhchan/dustjs.vim
- tpope/vim-surround
- tpope/vim-repeat
- lua_indent
- L9
- FuzzyFinder


## XFCE4

### Keyboard Layout

- .config/xfce4/xfconf/xfce-perchannel-xml/keyboard-layout.xml

Set up both Swedish and US keyboard layouts. Switch with `Alt + Shift`.

### Window Manager Settings

- .config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml

Currently only TCB setting is to enable display compositing.

### Keyboard Settings

- .config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml

Windows + r = Application Finder (collapsed)
Windows + Ctrl + r = Application Finder


The following all calls `exo-open` to launch default applciations (see
Preferred Applications below)

Windows + f = File Manager
Windows + t = Terminal Emulator
Windows + Enter = Terminal Emulator
Windows + w = Web Browser

NOTE: Window Manager shortcuts are administered in Menu > Settings > Window Manager > Keybaord

### Power Manager

- .config/xfce4/xfconf/xfce-perchannel-xml/xfce4-power-manager.xml

Basically only set up to sleep.

### Preferred Applications 

- .config/xfce4/helpers.rc

These settigns are used by `exo-open` to launch default applications. This does
NOT set default applications when opening files from a file manager. Use MIME
types for that.

### Mime Types

- .local/share/applications/mimeapps.list
- .config/mimeapps.list

Changes:

- Images generally use GPicView (called "Image Viewer" in XFCE)
- Text files generally uses Sublime Text
- Web pages generally uses Chromium


### Suggested Files & Folders to Sync

Make sure you track both locations for panel settigns in XFCE4.

- .config/xfce4/panel/
- .config/xfce4/desktop/
- .config/xfce4/xfconf/xfce-perchannel-xml/thunar.xml
- .config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml
