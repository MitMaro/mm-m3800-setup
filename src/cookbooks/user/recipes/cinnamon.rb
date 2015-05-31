require 'json'

directory "/home/mitmaro/.cinnamon/configs/panel-launchers@cinnamon.org" do
	recursive true
end

template "/home/mitmaro/.cinnamon/configs/panel-launchers@cinnamon.org/2.json" do
	source "cinnamon/configs/panel-launchers@cinnamon.org"
	action :create
end


directory "/home/mitmaro/.cinnamon/configs/calendar@cinnamon.org" do
	recursive true
end

template "/home/mitmaro/.cinnamon/configs/calendar@cinnamon.org/13.json" do
	source "cinnamon/configs/calendar@cinnamon.org"
	action :create
end

gsettings "org.cinnamon" do
	option "enabled-applets"
	value [
		'panel1:left:0:menu@cinnamon.org:0',
		'panel1:left:10:panel-launchers@cinnamon.org:2',
		'panel1:left:20:window-list@cinnamon.org:3',


		'panel1:right:0:systray@cinnamon.org:12',
		'panel1:right:10:notifications@cinnamon.org:4',
		'panel1:right:20:user@cinnamon.org:5',
		'panel1:right:30:removable-drives@cinnamon.org:6',
		'panel1:right:40:keyboard@cinnamon.org:7',
		'panel1:right:50:bluetooth@cinnamon.org:8',
		'panel1:right:60:network@cinnamon.org:9',
		'panel1:right:70:sound@cinnamon.org:10',
		'panel1:right:80:power@cinnamon.org:11',
		'panel1:right:90:calendar@cinnamon.org:13',
		'panel1:right:100:windows-quick-list@cinnamon.org:14'
	].to_json
end