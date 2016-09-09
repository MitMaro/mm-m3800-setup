class cinnamon {
	apt::ppa {'ppa:gwendal-lebihan-dev/cinnamon-nightly':
		ensure => 'present'
	}
	package {cinnamon:
		ensure => 'latest'
	}
}
