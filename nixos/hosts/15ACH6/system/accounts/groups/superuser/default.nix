{
	arguments,
	...
}: {
	users = {
		groups = {
			"${arguments.host.users.superuser.groupname}" = {
				name = arguments.host.users.superuser.groupname;
				members = [
					arguments.host.users.superuser.username
				];
			};
		};
	};
}
