class users::ubuntu {
	user {
		"ubuntu":
			ensure => absent,
	}
}

