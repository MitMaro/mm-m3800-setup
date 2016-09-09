class git {
	package {'git':
		ensure => 'latest'
	}
	git::config {'user.name':
		value => 'Tim Oram',
		user  => 'mitmaro',
	}

	git::config {'user.email':
		value => 'mitmaro@gmail.com',
		user  => 'mitmaro',
	}
	git::config {'alias.co':
		value => 'checkout',
		user  => 'mitmaro'
	}
	git::config {'alias.ci':
		value => 'commit',
		user  => 'mitmaro'
	}
	git::config {'alias.st':
		value => 'commit',
		user  => 'mitmaro'
	}
	git::config {'alias.br':
		value => 'branch',
		user  => 'mitmaro'
	}
	git::config {'alias.undo':
		value => 'reset --soft HEAD^',
		user  => 'mitmaro'
	}
	git::config {'alias.pretty':
		value => 'log --graph --pretty=oneline',
		user  => 'mitmaro'
	}
	git::config {'color.diff':
		value => 'auto',
		user  => 'mitmaro'
	}
	git::config {'color.status':
		value => 'auto',
		user  => 'mitmaro'
	}
	git::config {'color.branch':
		value => 'auto',
		user  => 'mitmaro'
	}
	git::config {'color.interactive':
		value => 'auto',
		user  => 'mitmaro'
	}
	git::config {'color.ui':
		value => 'true',
			user  => 'mitmaro'
	}
	git::config {'color.pager':
		value => 'true',
		user  => 'mitmaro'
	}
	git::config {'color.branch.current':
		value => 'yellow reverse',
		user  => 'mitmaro'
	}
	git::config {'color.branch.local':
		value => 'yellow',
		user  => 'mitmaro'
	}
	git::config {'color.branch.remote':
		value => 'green',
		user  => 'mitmaro'
	}
	git::config {'color.diff.meta':
		value => 'yellow bold',
		user  => 'mitmaro'
	}
	git::config {'color.diff.frag':
		value => 'magenta bold',
		user  => 'mitmaro'
	}
	git::config {'color.diff.old':
		value => 'red bold',
		user  => 'mitmaro'
	}
	git::config {'color.diff.new':
		value => 'green bold',
		user  => 'mitmaro'
	}
	git::config {'color.status.added':
		value => 'yellow',
		user  => 'mitmaro'
	}
	git::config {'color.status.changed':
		value => 'green',
		user  => 'mitmaro'
	}
	git::config {'color.status.untracked':
		value => 'cyan',
		user  => 'mitmaro'
	}

	git::config {'core.pager':
		value => 'less -FRSX',
		user  => 'mitmaro'
	}
	git::config {'core.whitespace':
		value => 'fix,-indent-with-non-tab,trailing-space,cr-at-eol',
		user  => 'mitmaro'
	}
}

