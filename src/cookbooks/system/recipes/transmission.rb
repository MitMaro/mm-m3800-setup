include_recipe "apt"

package "transmission" do
	action :install
end
