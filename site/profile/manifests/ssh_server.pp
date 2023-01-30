class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDDyqydLciH2PWSCPBTXlNAXO/HA6cW3PWTlLtAld7ybuEs915movMvxyLi2nQb6mWioys0YMEmbp9cAMcLpC4QT8G0aqazU3Z6oFZKiL+ybGbckJVMYqNdwAjCzpF5Lu34+Mj3ryv2ZZHbTR56JCargZiXrerI74dDfukP7S4ZzonyNKcT/tXuoX4LHcek8d22OToVK9hBHOF5HsX3ehgcZw8/1FY254YVCvXRldORXBZN/8pn9vbm3Qv2CEbwgDjdyWwxcFZR7B2lZjGYrQGXFyBummlPPmgA6bJ8kY0BLCN2e+8vYLarsmRakWvxgbAC4wKjrB8JJvqGBH2ntbgR root@master.puppet.vm',
	}  
}
