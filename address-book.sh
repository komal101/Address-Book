#! /bin/bash

echo "Your Personal Address Book"

sleep 1

echo "select a letter from the list of options:"
sleep 1
echo
echo "
      s - Search
      a - Add entries
      e - Edit entries
      d - Delete entries
      b - Go Back to options
      q - quit"
while :
do
read type_in
if [ "$type_in" = "s" ]; then
	echo "~~~~~~~~~~~~~~~~~~~~~Please enter a search name~~~~~~~~~~~~~~~~~~~~~"
	while :
	do
	read search_name
	
	#double quotes are not required in double brackets....double quotes are required in Single Bracket
	
	#cmd=grep -i -e 
	if [ $search_name == $(grep "$search_name" ./lib.sh) ]; then 
		echo $(grep "$search_name" "./lib.sh")
	elif [ $search_name = "b" ]; then
		echo "~~~~~~~~~~~~~~~~~~~~~Back to Home Page~~~~~~~~~~~~~~~~~~~~~"
		break

	else
		echo "name NOT found"
	fi
	done

elif [ "$type_in" = "q" ];
then
	echo "Good Bye!"
	break # BREAKS THE WHILE LOOP IF THIS CONDITION IS TRUE

else
	echo "Selet from one of the given options"
fi

done



