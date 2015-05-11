actions :set, :reset
default_action :set
attribute :schema, :kind_of => String, :name_attribute => true
attribute :option, :kind_of => String, :required => true
attribute :value,  :required => true
attribute :recursive, :kind_of => [TrueClass, FalseClass], :default => false
