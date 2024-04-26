{
	arguments,
	pkgs,
	...
}: {
	users = {
		users = {
			"${arguments.host.users.superuser.username}" = {
				isNormalUser = true;
				group = arguments.host.users.superuser.groupname;
				extraGroups = [
					"networkmanager"
					"video"
					"audio"
					"libvirtd"
				];
				shell = pkgs.fish;
				initialPassword = arguments.host.users.superuser.username;
			};
		};
	};
}
