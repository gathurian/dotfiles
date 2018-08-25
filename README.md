# Impressions
![Screenshot busy](Images/screenshot_dirty.png)

![Screenshot clean](Images/screenshot_clean.png)

# Dependencies
- i3
- [i3-gaps](https://github.com/Airblader/i3)
- [lucariox.vim](https://github.com/miconda/lucariox.vim)
- nitrogen (For desktop background)
- i3lock
- [i3lock-multimonitor](https://github.com/ShikherVerma/i3lock-multimonitor)
- [i3lock-color](https://github.com/PandorasFox/i3lock-color)
- numlockx (If you want to have numlock enabled at all time)
- Rofi
- FontAwesome
- Compton
- Pulseaudio
- [Polybar](https://github.com/jaagr/polybar)

## Install Dependencies (and dependencies of dependencies)
###My Dependencies
```
sudo apt install i3 i3lock imagemagick nitrogen numlockx rofi fonts-font-awesome compton pulseaudio
```
###Dependencies Polybar
```
sudo apt install cmake cmake-data pkg-config libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev python-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-xkb-dev libxcb-cursor-dev libpulse-dev libmpdclient-dev libiw-dev libnl-3-dev
```

###Dependencies i3-gaps
```
sudo apt install libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev
```

###Dependencies i3-color/i3lock-multimonitor
Should already be met with the various other dependencies

# Installation / Usage
* Download/Install all dependencies
* Copy the .scripts directory into your home-directory
* Copy the compton.conf in your ~/.config directory
* Set a wallpaper using ```nitrogen /path/to/picture/folder```
* Copy the i3 directory in your ~/.config directory
* Open the config file with your favourite text-editor
* Set the variables at the top
* Copy the ```lucariox.vim``` file into the ```/usr/share/vim/vim81/colors``` directory
* Copy the .vimrc, .bashrc and .bash_aliases in your home-directory
