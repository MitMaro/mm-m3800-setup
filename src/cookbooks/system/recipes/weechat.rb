include_recipe "apt"

apt_repository 'virtualbox' do
	uri           'https://weechat.org/ubuntu'
	distribution  node['lsb']['codename']
	components    ['main']
	key           'http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc'
end

package "weechat-curses" do
	options '--allow-unauthenticated'
	action :install
end

package "weechat-plugins" do
	options '--allow-unauthenticated'
	action :install
end
