include_recipe "apt"

apt_repository 'cinnamon' do
	uri           'ppa:lestcape/cinnamon'
	distribution  node['lsb']['codename']
end

package "cinnamon" do
	action :install
end
