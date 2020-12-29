#!usr/bin/bash
#=========================
#	GIT ALIAS/SCRIPTS
#=========================

#======Git Utilities=======
# git open >>> opens git repo in browser

#==========CUSTOM==========
     
# Adds a collabortor
function ghcollab(){
	gitBase=$(basename $(git remote get-url origin) .git)
	echo $gitBase
	echo "Whats git username of collaborator"
	read answer
	clear
	echo $answer
	echo "Authorization: token c6e34e765af240f160636bf36935acd22681edba" "https://api.github.com/repos/RyanGC93/${gitBase}/collaborators/${answer}"
	curl -H "Authorization: token c6e34e765af240f160636bf36935acd22681edba" "https://api.github.com/repos/RyanGC93/${gitBase}/collaborators/${answer}" -X PUT -d '{"permission":"admin"}'	
	echo "⚡⚡⚡⚡⚡⚡⚡NEW COLLAB⚡⚡⚡⚡⚡⚡⚡"
	echo "⚡⚡⚡⚡⚡⚡⚡$answer⚡⚡⚡⚡⚡⚡⚡"
}

function newrepo(){
	echo "What's the name of the repo?"
	
	echo ""
	
	echo " "
	# Creates github repo    
		    curl -i -H "Authorization: token c6e34e765af240f160636bf36935acd22681edba" https://api.github.com/user/repos -d "{\"name\":\"sdjksdsdfddjks\", \"private\": false}"
		          git init;
		          touch README.md
		          echo "# $1" >> README.md
		          touch .gitignore
		          echo "node-modules/" >> .gitignore
		          echo "node-modules/" >> .gitignore
		          git add -A
		          git commit -m 'first commit'
		          git remote add origin git@github.com:RyanGC93/sdjksdjks.git;
		          # git push origin main
		          git push --set-upstream origin main
		          echo "Git Hub Repo Set Up Called: sdfds"
}

#====================================
	 #Options Selector
#====================================

#!/usr/bin/env bash

# Renders a text based list of options that can be selected by the
# user using up, down and enter keys and returns the chosen option.
#
#   Arguments   : list of options, maximum of 256
#                 "opt1" "opt2" ...
#   Return value: selected index (0 for opt1, 1 for opt2 ...)
function select_option {

    # little helpers for terminal print control and key input
    ESC=$( printf "\033")
    cursor_blink_on()  { printf "$ESC[?25h"; }
    cursor_blink_off() { printf "$ESC[?25l"; }
    cursor_to()        { printf "$ESC[$1;${2:-1}H"; }
    print_option()     { printf "   $1 "; }
    print_selected()   { printf "  $ESC[7m $1 $ESC[27m"; }
    get_cursor_row()   { IFS=';' read -sdR -p $'\E[6n' ROW COL; echo ${ROW#*[}; }
    key_input()        { read -s -n3 key 2>/dev/null >&2
                         if [[ $key = $ESC[A ]]; then echo up;    fi
                         if [[ $key = $ESC[B ]]; then echo down;  fi
                         if [[ $key = ""     ]]; then echo enter; fi; }

    # initially print empty new lines (scroll down if at bottom of screen)
    for opt; do printf "\n"; done

    # determine current screen position for overwriting the options
    local lastrow=`get_cursor_row`
    local startrow=$(($lastrow - $#))

    # ensure cursor and input echoing back on upon a ctrl+c during read -s
    trap "cursor_blink_on; stty echo; printf '\n'; exit" 2
    cursor_blink_off

    local selected=0
    while true; do
        # print options by overwriting the last lines
        local idx=0
        for opt; do
            cursor_to $(($startrow + $idx))
            if [ $idx -eq $selected ]; then
                print_selected "$opt"
            else
                print_option "$opt"
            fi
            ((idx++))
        done

        # user key control
        case `key_input` in
            enter) break;;
            up)    ((selected--));
                   if [ $selected -lt 0 ]; then selected=$(($# - 1)); fi;;
            down)  ((selected++));
                   if [ $selected -ge $# ]; then selected=0; fi;;
        esac
    done

    # cursor position back to normal
    cursor_to $lastrow
    printf "\n"
    cursor_blink_on

    return $selected
}
#====================================
	 #Options Selector function
#====================================

function testoptions(){
	echo "Select one option using up/down keys and enter to confirm:"
	echo
	
	options=("one" "two" "three")
	
	select_option "${options[@]}"
	choice=$?
	
	echo "Choosen index = $choice"
	echo "        value = ${options[$choice]}"
}

echo "ran"