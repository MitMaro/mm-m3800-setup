template "/home/mitmaro/.gitconfig" do
	source "git/.gitconfig.erb"
	action :create
end
