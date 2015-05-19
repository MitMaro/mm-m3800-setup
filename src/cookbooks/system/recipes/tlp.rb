include_recipe "apt"

apt_repository 'tlp' do
	uri           'ppa:linrunner/tlp'
	distribution  node['lsb']['codename']
end

package "tlp" do
	action :install
end

package "tlp-rdw" do
	action :install
end
