rc-workstation
==============
Basic user account settings for TCB workstations.

# Sublime Text 2

## Default Packages

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

## Suggested Files to Sync

We need to figure out where keyboard bindings and such are found. Right now i
have no idea where those settigns are saved.

# XFCE4

## Window Manager Settings

- .config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml

Currently only TCB setting is to enable display compositing.

## Keyboard Settings

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

## Preferred Applications 

- .config/xfce4/helpers.rc

These settigns are used by exo-open to launch default applications. This does
NOT set default applications when opening files from a file manager. Use MIME
types for that.

## Mime Types

- Images generally use GPicView (called "Image Viewer" in XFCE)
- Text files generally uses Sublime Text
- Web pages generally uses Chromium


## Suggested Files & Folders to Sync

- .config/xfce4/panel/
- .config/xfce4/desktop/
- .config/xfce4/xfconf/xfce-perchannel-xml/thunar.xml
- .config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml
