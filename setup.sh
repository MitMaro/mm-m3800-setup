#!/bin/bash

RUBY_VERSION=2.2

ensure_root () {
	sudo --prompt="Root required, please enter password: " --validate
}

dpkg -s curl &> /dev/null

if [ $? -ne 0 ]; then
	echo "curl not installed, installing"
	ensure_root
	sudo apt-get -y  install curl
fi

command -v chef-client &> /dev/null
if [ $? -ne 0 ]; then
	echo "chef not installed, installing"
	ensure_root
	curl -L https://www.chef.io/chef/install.sh | sudo bash
fi

command -v ruby &> /dev/null
if [ $? -ne 0 ]; then
	echo "ruby not installed, installing"
	ensure_root
	sudo apt-add-repository ppa:brightbox/ruby-ng
	sudo apt-get update
	sudo apt-get -y install ruby2.2 ruby2.2-dev
fi

librarian=`gem list -i librarian-chef`
if [ $librarian == "false" ]; then
	echo "librarian chef not installed, installing"
	ensure_root
	sudo gem install librarian-chef
fi
