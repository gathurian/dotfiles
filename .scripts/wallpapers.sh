#!/bin/bash

#option "t" sets the timeout time between changing wallpapers
#option "s" sets the setting for when the image is applied as wallpaper
#after these options, place the locations for each of your folders that you
#want to be scanned for wallpapers to be cycled through
#a good example to put into your ~ folder;
#BEGIN
#run wallpapers.sh
#if [ -f ~/wallpapers.sh ];
#then
#~/wallpapers.sh -t 240 -s stretched "/media/sda2/Pictures/Wallpapers" "/usr/share/backgrounds" "/usr/share/backgrounds/cosmos" &
#else
#echo "wallpapers.sh doesn't exist" >> ~/Desktop/error.txt
#fi
#end

while getopts ":t:s:" opt;	#get the command line arguments so that 
do				#it can set the amount of time to sleep for
  case $opt in
	t)
	time=$OPTARG
	a=0
	;;
	s)
	setting=$OPTARG
	b=0
	;;
  esac
done
if [ $a = 0 ]; 	#so yea i guess i couldn't figure out how to get it to work 
  then	       	#in the opt-while loop above. oh well. it works now.
  shift 2
fi
if [ $b = 0 ];
  then
  shift 2
fi
time=${time:=300}		#set time to default if the user didn't specify
setting=${setting:=stretch}	#set setting to default of stretched if user doesn't specify
newline='
'				#variable is easier :)

##change to each of the directories that contain wall papers and add what's in those directories 
##to a newline delimited list so that it can be iterated it
	wallpapers=""
	while [ "$1" != "" ];
	do
	   cd "$1"
	   for var in {*.jpg,*.png,*.JPG,*.PNG}     #match jpg and png extensions
	   do
	   	if [ -f "$1/$var" ] && [ -r "$1/$var" ];
	   	then
			if [ "$var" != '*.jpg' ] &&      #if there is no match for the file type 
			[ "$var" != '*.png' ] &&	 #in the directory, skip it so that it doesn't
			[ "$var" != '*.JPG' ] && 	 #cause problems when it goes to change to them
			[ "$var" != '*.PNG' ];
			then
			wallpapers="$wallpapers$1/$var$newline"
			fi
	   	fi
	   done
	   shift
	done
	count=$(echo "$wallpapers" | wc -l)
#finished adding wallpapers up into newline delimited variable

#iterate through $wallpapers and set them to current

	current=1
	while [ true ];
	do
		#/usr/bin/gconftool-2 -t string -s /desktop/gnome/background/picture_filename $DIR/$file
		#iterate through the wallpapers
		while [ "$current" -lt "$count" ];
		do
		tempwallpaper="$(echo "$wallpapers" | head -n $current | tail -n 1)"

		#change wall paper
		/usr/bin/gconftool-2 --type string --set /desktop/gnome/background/picture_filename "$tempwallpaper" /desktop/gnome/background/picture_options $setting


		current=$(($current+1))
		sleep $time
		done
		count=1
	done
##end of script!

