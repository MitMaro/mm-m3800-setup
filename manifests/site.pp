node mm-m3800 {
#	class { 'apt':
#		always_apt_update    => true,
#		apt_update_frequency => 'always',
#		fancy_progress       => true
#	}
#	include vim
#	include cinnamon
	include git
#	include ssh
#	include vlc
}
