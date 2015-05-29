template "/home/mitmaro/.inputrc" do
	source "dotfiles/inputrc.erb"
	action :create
end

template "/home/mitmaro/.bashrc" do
	source "dotfiles/bashrc.erb"
	action :create
end

directory "/home/mitmaro/.bashrc.d/" do
	recursive true
end

template "/home/mitmaro/.bashrc.d/001-colors" do
	source "dotfiles/bashrc.d/colors.erb"
	action :create
end

template "/home/mitmaro/.bashrc.d/001-environment" do
	source "dotfiles/bashrc.d/environment.erb"
	action :create
end

template "/home/mitmaro/.bashrc.d/001-aliases" do
	source "dotfiles/bashrc.d/aliases.erb"
	action :create
end

template "/home/mitmaro/.bashrc.d/010-functions" do
	source "dotfiles/bashrc.d/functions.erb"
	action :create
end

template "/home/mitmaro/.bashrc.d/100-rvm" do
	source "dotfiles/bashrc.d/rvm.erb"
	action :create
end

template "/home/mitmaro/.bashrc.d/500-bash-settings" do
	source "dotfiles/bashrc.d/bash-settings.erb"
	action :create
end
