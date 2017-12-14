# Impressions
![Clean Desktop with visible bar](https://github.com/taneher/dotfiles/blob/master/Images/screenshot_clean.png)

![Busy with Dolphin, md-editor and two Terminals with vim](https://github.com/taneher/dotfiles/blob/master/Images/screenshot.png)


# Dependencies
- i3
- [i3-gaps](https://github.com/Airblader/i3)
- [i3blocks](https://github.com/vivien/i3blocks)(Instead of i3bar)
- nitrogen (For desktop background)
- [jumpapp](https://github.com/mkropat/jumpapp) (As application switcher)
- i3lock
- [i3lock-color](https://github.com/PandorasFox/i3lock-color)
- compton
- numlockx (If you want to have numlock enabled at all time)
- j4-dmenu-desktop (Instead of DMenu, the default application launcher)
- UXTerm

## Install Dependencies
```
sudo apt-get install i3 nitrogen i3lock compton numlockx j4-dmenu-desktop uxterm
```

# Installation / Usage
1. Download/Install all dependencies
2. Copy the .scripts Folder into your home-directory
3. Copy the compton.conf in your home/.config directory
4. Set a wallpaper using ```nitrogen /path/to/picture/folder```
5. Copy the config file in yor home/.config/i3 directory
6. Open the config file with your favourite text-editor (Which should be vim...)
7. Set the variables at the toip
8. In case there's no secondary monitor, scroll to line 244 and delete the second "bar" statement
9. Copy the "wallpaper.png" into your /home/Pictures directory (or change the $Folder variable in the .scripts/lockscreen.sh script)
10. The image is 1920x1080px. If your screen(s) have a different resolution, change the picture to a different picture with the correnct resolution or use e.g. GIMP to stretch it to the correct resolution.
11. Copy the .vimrc in your /home directory
