#!/bin/bash

print_help () {
	cat <<-HELP
		Usage: $0 [--user|--system]
		       $0 --help

		If no options are given then it will run both the
		system and user setups.

		--help       Prints this message
		--user       Run only the user setup
		--system     Run only the system setup

		HELP
}

user=true
system=true

while [[ $# > 0 ]]; do
	key="$1"

	case $key in
		--user)
			system=false
			user=true
		;;
		--system)
			system=true
			user=false
		;;
		--help)
			print_help
			exit
		;;
		*)
			# unknown option
			print_help
			exit
		;;
	esac
	shift
done

source ./setup.sh

librarian-chef install || exit $?

if [[ $system == 'true' ]] ; then
	sudo --prompt="Root required, please enter password: " --validate
	sudo chef-client --config system_client.rb --local-mode --runlist 'recipe[system]' || exit $?
fi

if [[ $user == 'true' ]] ; then
	chef-client --config user_client.rb --local-mode --runlist 'recipe[user]' || exit $?
fi
