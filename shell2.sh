#!/bin/bash
while true;do
	#display menu
	echo "Menu:"
	echo "1.Date:"
	echo "2.Cal:"
	echo "3.Ls:"
	echo "4.Pwd:"
	echo "5.exit:"
        echo -n "Enter your choice: "
	read choice

	#Execute commands based on user choice
	case $choice in
		1)
			date
			;;
	        2)		
                      cal
		      ;;
	      3)
		    ls
		    ;;
	       4)
	           pwd
		   ;;
	   5) 
		echo "Existing...."
		break
		;;	
	*)
          echo "Invalid choice.please enter a number between 1 and 5."
	  ;;
    esac
    done


