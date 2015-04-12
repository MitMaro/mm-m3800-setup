sudo apt-get install curl
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

if [ ! -e ~/.rvm/scripts/rvm ]; then
	curl -sSL https://get.rvm.io | bash -s stable --ruby
fi

source /home/mitmaro/.rvm/scripts/rvm

rvm install ruby --latest
rvm use --latest
rvm rubygems latest
gem install librarian-chef
