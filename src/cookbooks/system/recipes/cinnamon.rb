include_recipe "apt"

apt_repository 'cinnamon-nightly' do
	uri           'ppa:gwendal-lebihan-dev/cinnamon-nightly'
	distribution  node['lsb']['codename']
end

package "cinnamon" do
	action :install
end
