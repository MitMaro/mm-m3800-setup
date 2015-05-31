apt_repository 'nodejs' do
	uri           'https://deb.nodesource.com/node_0.10'
	distribution  node['lsb']['codename']
	components    ['main']
	key           'https://deb.nodesource.com/gpgkey/nodesource.gpg.key'
end

package "nodejs" do
	action :install
end

nodejs_npm "n"
