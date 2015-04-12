template "/home/mitmaro/.gitconfig" do
	source ".gitconfig.erb"
	action :create
end
