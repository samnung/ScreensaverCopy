#!/bin/sh

# ScreensaverCopy by Roman Kriz, samnung@gmail.com

PATH_SCREEN=/usr/share/blanket/screensaver/
PATH_ORIG=/mnt/us/screensaver

{
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

mntroot rw

echo "screenhack by samnung"



echo "1 removing old files in $PATH_SCREEN"

for file1 in $(find $PATH_SCREEN -type f) # funguje 
do
	echo "$0: remove $file1"
	
	rm "$file1"
done

echo "2 copying files from $PATH_ORIG to $PATH_SCREEN"

for file2 in $(find $PATH_ORIG/ -type f | grep ".png$")
do
	
	
	if [ `basename "$file2" | cut -b1` = '.' ]; then
		echo "$0: remove $file2"
		rm "$file2"
	else
		echo "$0: copy $file2"
		cp "$file2" "$PATH_SCREEN"
	fi
done

echo "3 if is this last line, error was in \`cd' to $PATH_SCRENN"

cd "$PATH_SCREEN" ||  exit 



for file3 in `find . -type f | grep ".png$" `
do
	echo $0: rename $file3 to =$(basename "$file3")
	mv "$file3" =$(basename "$file3")
done

echo "4 renaming files to specific name and number \"bg_xsmall_ssXX\""

i=0
j=0

FULL_=false

for file4 in `find . -type f | grep ".png$" | sort`
do
	echo "$0: rename $file4 to bg_xsmall_ss${i}${j}.png"
	if [ $FULL_ = false ]; then
		mv "$file4" "bg_xsmall_ss${i}${j}.png"
		j=$(expr $j + 1)
		if [ $j = 10 ]; then
			j=0
			i=$(expr $i + 1)
		fi
		if [ $i = 10 ]; then
			echo "maximum of screensavers is 99"
			FULL_=true
		fi
	else
		echo "remove $file4"
		rm "$file4"
	fi
	
done

echo "5 fin"

IFS=$SAVEIFS

mntroot ro

} 2>&1 > $PATH_ORIG/output.txt

