class ssh {
	file { "/home/mitmaro/.ssh/config" :
		owner   => 'mitmaro',
		group   => 'mitmaro',
		mode    => '0600',
		content => template('files/ssh_config.erb'),
	}
}
