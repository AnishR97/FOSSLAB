#Experiment 6
#--------------
#!/bin/bash
if [ $# -eq 2 ];
then
	if [ ! -f ~/classlist ] || [ $1 != 'classlist' ];
	then
		echo "File Not Found"
	else
		count="$(grep $2 ~/classlist | wc -l)"
		if [ $count -eq 0 ];
		then
			echo $2 >>~/classlist
			echo "The New Classlist File is : "
			cat ~/classlist
		else
			echo "Name Already Exists in the file"
			cat ~/classlist
		fi
	fi
else
	echo "Enter Correct Number of Arguments : ./addnames.sh <classlist> <username>"
fi
