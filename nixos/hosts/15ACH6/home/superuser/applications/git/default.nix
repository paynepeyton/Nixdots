{
	arguments,
	...
}: {
	imports = [
		./delta
	];

	programs = {
		git = {
			enable = true;
			userName = arguments.host.users.superuser.git.user.name;
			userEmail = arguments.host.users.superuser.git.user.email;
		};
	};
}
