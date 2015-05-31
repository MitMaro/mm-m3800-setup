#!/bin/bash

RUBY_VERSION=2.2

ensure_root () {
	sudo --prompt="Root required, please enter password: " --validate
}

dpkg -s curl &> /dev/null

if [ $? -ne 0 ]; then
	echo "curl not installed, installing"
	ensure_root
	sudo apt-get install curl
fi


 if [ ! -e ~/.rvm/scripts/rvm ]; then
	echo "rvm not installed, installing"
	gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
	curl -sSL https://get.rvm.io | bash -s stable --ruby
 fi

source /home/mitmaro/.rvm/scripts/rvm

rubyversion=`rvm list strings | grep $RUBY_VERSION`
if [ -z $rubyversion ]; then
	echo "ruby $RUBY_VERSION not installed, installing"
	rvm install $RUBY_VERSION
fi

rvm use $RUBY_VERSION &> /dev/null

librarian=`gem list -i librarian-chef`
if [ $librarian == "false" ]; then
	echo "librarian chef not installed, installing"
	gem install librarian-chef
fi
