class users::monokrome {
	user {
		'monokrome':
			ensure => present,
			uid => 2000,
			gid => 'admin',
			shell => '/bin/bash',
			home => '/home/monokrome',
			managehome => true,
	}

	ssh_authorized_key {
		"monokrome@macbookpro":
			user => "monokrome",
			ensure => "present",
			type => "ssh-rsa",
			key => "AAAAB3NzaC1yc2EAAAABIwAAAQEArwyGxQbNbc/ASCovTFo8Lz05tAb5Q9cRGM96jIW7UFt0qpXwBI5paT1LJaGicQ//iEhrFWkm342ffgpkrJOez5sQz1oPbNY3DMRYd7JNQuXADAlTMALrEI56dc29KMIScE4A6fBxblIaWqXsgl7us1Llmj/xA+Es7No8sw0UlTCL9OSgvTtMyabuwROtLEDuIWbCjWdrBem2M7nBVR25xQEwSxohfJ3TgNVgipKDB+ypsUKTpkD8BSy6gaRRZGXoiCcuUyNkwLG7vls/5hnxxIcJA22E353Ucw8a+AAWD6Uh8iDxuY15Ey6GU6/v1GNQwm/SSnC8kJDDGXaFujm8gw==",
	}
}

