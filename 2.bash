#! /bin/bash
#echo begining
# set as=$#argv
 

	echo "Menu"

	echo "1. download mp3"

	echo "2. download pdf"

	echo "3. download doc"

	echo "4. for downloading from url"

	echo "5. exit"
	

	echo "enter the choice!"
	read s

	case $s in

	1)      for f in $(find -name '*.html' -o -name '*.htm');
		do

			grep -P --only-matching '(?<=href=")[^ "]*\.mp3'  "$f" | cat >>abc.txt

		done

		;;
     	2)     for f in $(find -name '*.html' -o -name '*.htm')
		do

			grep -P --only-matching '(?<=href=")[^ "]*\.pdf'  "$f" | cat >>abc.txt

		done

		;;
	3)	for f in $(find -name '*.html' -o -name '*.htm')
		do

			grep -P --only-matching '(?<=href=")[^ "]*\.doc'  "$f" | cat >>abc.txt

		done

		;;    
	4)	echo "Enter the url "
		read filename
		wget -O relative $filename
		mv /Download/filename  /Desktop/Scripts/filename
		for f in $(find -name '*.html' -o -name '*.htm')
				do

					grep -P --only-matching '(?<=href=")[^ "]*\.mp3'  "$f" | cat >>abc.txt

				done
		;;
		

esac

cat $abc.txt



