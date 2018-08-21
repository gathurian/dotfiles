#unfuck display layout
xrandr --output DP-2.8 --mode 1920x1080 --pos 0x0 --rotate right --output DP-4 --mode 3440x1440 --pos 1080x208

#mount OneDrive share
#rclone mount Neher: /mnt/DATA/OneDriveNeher/ &
#rclone mount Hotmail: /mnt/DATA/OneDrivePrivat/ &

#set background
nitrogen --restore

#start ksuperkey (allowing application-launcher to be started with Win-key)
ksuperkey

#start polybar
exec .config/polybar/launch.sh

#start pulseaudio for audio
pulseaudio -D

#start conky
conky -c /etc/conky/conkyrc

#redraw conky
/home/alex/.scripts/conky-redraw.sh &

#unfuck terminal layout
xrdb /home/alex/.scripts/.Xresources



